import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:http/http.dart' as http;

class NFCNotifier extends ChangeNotifier {
  bool _isProcessing = false;
  String _message = "";
  Map<String, dynamic>? _productDetails; // Stocker les détails du produit

  bool get isProcessing => _isProcessing;
  String get message => _message;
  Map<String, dynamic>? get productDetails => _productDetails;

  // Début de l'opération NFC (lecture/écriture)
  Future<void> startNFCOperation({required NFCOperation nfcOperation}) async {
    try {
      _isProcessing = true;
      notifyListeners();

      bool isAvail = await NfcManager.instance.isAvailable();

      if (isAvail) {
        _message = nfcOperation == NFCOperation.read
            ? "Scanning NFC tag..."
            : "Writing to NFC tag...";
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
        _message = "NFC is disabled. Please enable NFC in settings.";
        notifyListeners();
      }
    } catch (e) {
      _isProcessing = false;
      _message = "An error occurred: $e";
      notifyListeners();
    }
  }

  // Lire depuis une étiquette NFC
  Future<String?> _readFromTag({required NfcTag tag}) async {
    String? nfcTagId;

    try {
      Map<String, dynamic> nfcData = {
        'nfca': tag.data['nfca'],
        'mifareultralight': tag.data['mifareultralight'],
        'ndef': tag.data['ndef']
      };

      if (nfcData.containsKey('ndef')) {
        List<int> payload =
            nfcData['ndef']['cachedMessage']?['records']?[0]['payload'];
        if (payload != null) {
          nfcTagId = String.fromCharCodes(
              payload.sublist(3)); // Sauter les premiers caractères inutiles
          _message = "NFC Tag ID: $nfcTagId";
        } else {
          _message = "No payload data found on the NFC tag.";
        }
      } else {
        _message = "No NDEF data found on the NFC tag.";
      }
    } catch (e) {
      _message = "Error reading NFC tag: $e";
    }

    return nfcTagId;
  }

  // Récupérer les informations du produit via l'ID NFC
  Future<void> _fetchProductByNfcTag(String nfcTagId) async {
    final url = Uri.parse("https://your-api-url/api/tag/$nfcTagId");
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        _productDetails = jsonDecode(response.body);
        _message = "Product details fetched successfully!";
      } else {
        _message = "Failed to fetch product details: ${response.body}";
      }
    } catch (e) {
      _message = "Error fetching product details: $e";
    }
    notifyListeners();
  }
}

enum NFCOperation { read, write }
