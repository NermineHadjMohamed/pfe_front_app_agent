/*import 'dart:convert';
import 'dart:io';

import 'package:demo_app/pages/QualityAssuranceWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';

class ProductDetailsPage extends StatelessWidget {
  final String productName;
  final int quantity;
  final String productDocument;
  final String roleName;
  final List<dynamic> parameters; // Add this line to take parameters

  ProductDetailsPage({
    required this.productName,
    required this.quantity,
    required this.productDocument,
    required this.roleName,
    required this.parameters, // Add this line to take parameters
  });

  Future<String> _savePdf(String base64String) async {
    final bytes = base64.decode(base64String);
    final dir = await getTemporaryDirectory();
    final filePath = '${dir.path}/product_document.pdf';
    final file = File(filePath);
    await file.writeAsBytes(bytes);
    return filePath;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Product Name: $productName",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text("Quantity: $quantity", style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Text("Role Name: $roleName", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                final filePath = await _savePdf(productDocument);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PdfViewPage(filePath: filePath),
                  ),
                );
              },
              child: const Text("View Product Document2"),
            ),
            const SizedBox(height: 16),
            QualityAssuranceWidget(
              parameters: parameters, // Pass parameters
              roleName: roleName,
            ),
          ],
        ),
      ),
    );
  }
}

class PdfViewPage extends StatelessWidget {
  final String filePath;

  const PdfViewPage({Key? key, required this.filePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Document"),
      ),
      body: PDFView(
        filePath: filePath,
        enableSwipe: true,
        swipeHorizontal: true,
        autoSpacing: false,
        pageFling: true,
        onRender: (_pages) {
          print('PDF rendered: $_pages pages');
        },
        onError: (error) {
          print('Error: $error');
        },
        onPageError: (page, error) {
          print('Page $page error: $error');
        },
      ),
    );
  }
}
*/