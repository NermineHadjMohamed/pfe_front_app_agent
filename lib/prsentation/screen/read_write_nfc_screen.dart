import 'package:demo_app/config.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart'; // Import ML Kit
import 'package:http/http.dart' as http; // Import HTTP package
import 'dart:convert'; // Import for jsonEncode

class ReadWriteNFCScreen extends StatefulWidget {
  const ReadWriteNFCScreen({Key? key}) : super(key: key);

  @override
  _ReadWriteNFCScreenState createState() => _ReadWriteNFCScreenState();
}

class _ReadWriteNFCScreenState extends State<ReadWriteNFCScreen> {
  CameraController? _cameraController;
  bool _isDetecting = false;
  final TextRecognizer _textRecognizer =
      TextRecognizer(); // Initialize Text Recognizer
  String? nfcTagId; // Variable to hold detected NFC Tag ID

  @override
  void initState() {
    super.initState();
    _initializeCamera();
    
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;

    _cameraController = CameraController(
      firstCamera,
      ResolutionPreset.high,
    );

    await _cameraController?.initialize();
    if (!mounted) return;

    setState(() {});
  }

  @override
  void dispose() {
    _cameraController?.dispose();
    _textRecognizer.close(); // Close the recognizer when not needed
    super.dispose();
  }

  Future<void> _scanForNumbers(BuildContext context) async {
    if (_cameraController != null && !_isDetecting) {
      setState(() {
        _isDetecting = true;
      });

      try {
        // Capture an image from the camera
        final image = await _cameraController!.takePicture();

        // Process the image using the text recognizer
        final inputImage = InputImage.fromFilePath(image.path);
        final recognizedText = await _textRecognizer.processImage(inputImage);

        // Extract numbers from recognized text
        nfcTagId = _extractNumbersFromText(
            recognizedText.text); // Save detected number to nfcTagId

        setState(() {
          _isDetecting = false;
        });

        // Send the detected NFC tag ID to the API
        await _sendNfcTagIdToApi();

        // Navigate to another screen or process the detected number
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ProductDetailsScreen(nfcTagId ?? 'No number detected'),
          ),
        );
      } catch (e) {
        print("Error detecting text: $e");
        setState(() {
          _isDetecting = false;
        });
      }
    }
  }

  // Extract numbers from the recognized text
  String _extractNumbersFromText(String text) {
    final numberRegExp = RegExp(r'\d+'); // Regular expression to find numbers
    final match = numberRegExp.firstMatch(text);
    return match?.group(0) ??
        'No numbers detected'; // Return detected number or default message
  }

  // Send detected NFC tag ID to the API
// Send detected NFC tag ID to the API
// Send detected NFC tag ID to the API
  Future<void> _sendNfcTagIdToApi() async {
    if (nfcTagId != null) {
      // Construct URL without the nfcTagId in the path since it is extracted from body
      var url = Uri.https(
          Config.apiURL, '/api/tag/$nfcTagId'); // Pass nfcTagId in the URL
      try {
        final response = await http.get(
          // Use GET request instead of POST
          url,
          headers: {'Content-Type': 'application/json'}, // Set headers for JSON
        );

        if (response.statusCode == 200) {
          // Process the successful response

          print('NFC tag ID sent successfully: ${response.body}');
          
        } else {
          print(
              'Failed to send NFC tag ID. Status code: ${response.statusCode}');
        }
      } catch (e) {
        print('Error sending NFC tag ID: $e');
      }
    } else {
      print('NFC tag ID is null, cannot send to API.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scan Number"),
      ),
      body: Column(
        children: [
          _cameraController != null && _cameraController!.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _cameraController!.value.aspectRatio,
                  child: CameraPreview(_cameraController!),
                )
              : const Center(child: CircularProgressIndicator()),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _isDetecting
                ? null
                : () {
                    _scanForNumbers(context);
                  },
            child: const Text("Start Scanning"),
          ),
          if (_isDetecting) ...[
            const SizedBox(height: 16),
            const CircularProgressIndicator(),
            const SizedBox(height: 8),
            const Text("Detecting numbers..."),
          ],
        ],
      ),
    );
  }
}

class ProductDetailsScreen extends StatelessWidget {
  final String detectedNumber;

  ProductDetailsScreen(this.detectedNumber);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detected Number"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Detected Number: $detectedNumber"),
          ],
        ),
      ),
    );
  }
}
