import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:http/http.dart' as http;

class NFCNotifier extends ChangeNotifier {
  bool _isProcessing = false;
  String _message = "";
  Map<String, dynamic>? _productDetails; // Store product details

  bool get isProcessing => _isProcessing;
  String get message => _message;
  Map<String, dynamic>? get productDetails => _productDetails;

  Future<void> startNFCOperation({required NFCOperation nfcOperation}) async {
    try {
      _isProcessing = true;
      notifyListeners();

      bool isAvail = await NfcManager.instance.isAvailable();

      if (isAvail) {
        _message = nfcOperation == NFCOperation.read ? "Scanning" : "Writing";
        notifyListeners();

        NfcManager.instance.startSession(onDiscovered: (NfcTag nfcTag) async {
          if (nfcOperation == NFCOperation.read) {
            final nfcTagId = await _readFromTag(tag: nfcTag);
            if (nfcTagId != null) {
              await _fetchProductByNfcTag(nfcTagId);
            }
          }
          _isProcessing = false;
          notifyListeners();
          await NfcManager.instance.stopSession();
        });
      } else {
        _isProcessing = false;
        _message = "Please Enable NFC From Settings";
        notifyListeners();
      }
    } catch (e) {
      _isProcessing = false;
      _message = e.toString();
      notifyListeners();
    }
  }

  Future<String?> _readFromTag({required NfcTag tag}) async {
    Map<String, dynamic> nfcData = {
      'nfca': tag.data['nfca'],
      'mifareultralight': tag.data['mifareultralight'],
      'ndef': tag.data['ndef']
    };

    String? nfcTagId;
    if (nfcData.containsKey('ndef')) {
      List<int> payload = nfcData['ndef']['cachedMessage']?['records']?[0]['payload'];
      nfcTagId = String.fromCharCodes(payload);
      _message = "NFC Tag ID: $nfcTagId";
    } else {
      _message = "No Data Found";
    }
    return nfcTagId;
  }

  Future<void> _fetchProductByNfcTag(String nfcTagId) async {
    final url = Uri.parse("https://your-api-url/api/tag/$nfcTagId");
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        _productDetails = jsonDecode(response.body);
        _message = "Product details fetched successfully!";
      } else {
        _message = "Failed to fetch product: ${response.body}";
      }
    } catch (e) {
      _message = "Error fetching product: $e";
    }
    notifyListeners();
  }
}

enum NFCOperation { read, write }
