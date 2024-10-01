import 'package:demo_app/core.notifier/nfc_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 // Make sure to update this import path

class ReadWriteNFCScreen extends StatelessWidget {
  const ReadWriteNFCScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NFCNotifier(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("NFC Read/Write"),
        ),
        body: Builder(
          builder: (context) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Provider.of<NFCNotifier>(context, listen: false)
                          .startNFCOperation(nfcOperation: NFCOperation.read);
                    },
                    child: const Text("Read NFC"),
                  ),
                  Consumer<NFCNotifier>(
                    builder: (context, provider, _) {
                      if (provider.isProcessing) {
                        return const CircularProgressIndicator();
                      }
                      if (provider.productDetails != null) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ProductDetailsScreen(provider.productDetails!),
                            ),
                          );
                        });
                      }
                      return const SizedBox();
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class ProductDetailsScreen extends StatelessWidget {
  final Map<String, dynamic> productDetails;

  ProductDetailsScreen(this.productDetails);

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
            Text("Product Name: ${productDetails['productName']}"),
            Text("Product Price: ${productDetails['productPrice']}"),
            Text("Description: ${productDetails['productDescription']}"),
            // Add more details as needed
          ],
        ),
      ),
    );
  }
}
