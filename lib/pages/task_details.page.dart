import 'package:demo_app/models/ProductResponse.dart';
import 'package:flutter/material.dart';
 // Adjust this import to where your ProductResponse model is located

class ProductDetailsPage extends StatelessWidget {
  final ProductResponse productResponse; // The product response data
  final int index; // The index of the product in the list

  const ProductDetailsPage({Key? key, required this.productResponse, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the product details from the response
    var productData = productResponse.data[index];
    var product = productData.productDetails;
   /* var roleDetails = fetchRoleDetails(product.roles);
    // Assuming the role of "authorization" is identified by a specific role name or ID
   var authorizationRole = product.roles?.firstWhere(
  (role) => role.roleName.toLowerCase() == 'authorization', // Ensure role is non-null
  orElse: () => null, // Return null if no match is found
);*/

    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display the basic product details
            Text("Product Name: ${product.productName}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
        
            Text("Quantity: ${productData.quantity}", style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),

            // Display the authorization role and its agents if available
           /* authorizationRole != null
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Authorization Role: ${authorizationRole.roleName}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 4),
                      Text("Agents: ${authorizationRole.agents.map((agent) => agent.agentId).join(", ")}", style: TextStyle(fontSize: 16)),
                    ],
                  )
                : Text("Authorization role not found", style: TextStyle(fontSize: 16, color: Colors.red)),
          */],
        ),
      ),
    );
  }
}
