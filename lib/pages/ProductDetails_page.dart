import 'package:demo_app/api/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:demo_app/models/product.dart'; // Import your Product model


class ProductDetailsPage extends ConsumerStatefulWidget {
  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends ConsumerState<ProductDetailsPage> {
  String? nfcTagId; // Variable to hold the NFC tag ID
  List<Product>? products; // List to hold fetched products
  bool isLoading = false; // Loading state
  String taskStatus = "not started"; // Task status

  // Method to fetch product details based on NFC Tag ID
  Future<void> fetchProductDetails() async {
    if (nfcTagId != null) {
      setState(() {
        isLoading = true; // Start loading
      });

      products = await APIService.fetchProductByNfcTag(nfcTagId!);
      setState(() {
        isLoading = false; // Stop loading
      });
    }
  }

  // Method to start a task
  Future<void> startTask(String productId, String roleId) async {
    bool result = await APIService.updateTaskStatus("agentId", productId, roleId, "started"); // Replace "agentId" with actual agent ID
    if (result) {
      setState(() {
        taskStatus = "started"; // Update task status
      });
      print("Task started successfully!");
    }
  }

  // Method to finish a task
  Future<void> finishTask(String productId, String roleId) async {
    bool result = await APIService.updateTaskStatus("agentId", productId, roleId, "finished"); // Replace "agentId" with actual agent ID
    if (result) {
      setState(() {
        taskStatus = "finished"; // Update task status
      });
      print("Task finished successfully!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter NFC Tag ID',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                nfcTagId = value; // Update NFC tag ID
              },
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: fetchProductDetails,
              child: Text('Fetch Product Details'),
            ),
            SizedBox(height: 20),
            if (isLoading) CircularProgressIndicator(), // Show loading indicator
            if (products != null) ...[
              for (var product in products!)
                Card(
                  elevation: 2,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(product.image),
                        SizedBox(height: 10),
                        Text('Product Name: ${product.productName}', style: TextStyle(fontSize: 18)),
                        Text('Description: ${product.description ?? "No description"}'),
                        Text('Price: \$${product.productPrice.toStringAsFixed(2)}'),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () => startTask(product.id, "roleId"), // Replace "roleId" with actual role ID
                          child: Text('Start Task'),
                        ),
                        ElevatedButton(
                          onPressed: () => finishTask(product.id, "roleId"), // Replace "roleId" with actual role ID
                          child: Text('Finish Task'),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ],
        ),
      ),
    );
  }
}
