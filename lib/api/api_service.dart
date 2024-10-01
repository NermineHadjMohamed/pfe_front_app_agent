import 'dart:convert';
import 'package:demo_app/config.dart';
import 'package:demo_app/models/login_response_model.dart';
import 'package:demo_app/models/product.dart';
import 'package:demo_app/utils/shared_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

class APIService {
  static var client = http.Client();

  static Future<bool> loginAgent(String email, String password) async {
    Map<String, String> requestHeaders = {'Content-Type': "application/json"};

    var url = Uri.https(Config.apiURL, Config.loginAPI);
    print('Logging in to URL: $url');
    
    // Log email and password
    print('Request Payload: {"email":"$email", "password":"$password"}');

    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode({"email": email, "password": password}),
    );

    // Log response details
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
        var loginResponse = loginResponseJson(response.body);
        if (loginResponse.message == "Success") {
            await SharedService.setLoginDetails(loginResponse);
            return true;
        } else {
            print('Login failed: ${loginResponse.message}');
            return false;
        }
    } else {
        print('Login failed with status: ${response.statusCode}');
        print('Error body: ${response.body}'); // This will help you see the full error response
        return false;
    }
}
// Method to fetch product details by NFC Tag ID
  static Future<List<Product>?> fetchProductByNfcTag(String nfcTagId) async {
    Map<String, String> requestHeaders = {'Content-Type': "application/json"};
    var url = Uri.https(Config.apiURL, '/api/fetchProductByNfcTag/$nfcTagId'); // Ensure the endpoint matches your API

    print('Fetching product details from URL: $url');
    var response = await client.get(url, headers: requestHeaders);

    // Log response details
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      final decodedResponse = json.decode(response.body);
      List<dynamic> data = decodedResponse['data']; // Assuming your API returns data in this structure
      // Convert each item in the list to a Product object
      return data.map((item) => Product.fromJson(item)).toList(); 
    } else {
      print('Failed to fetch product details with status: ${response.statusCode}');
      print('Error body: ${response.body}');
      return null;
    }
  }

  // Method to update task status
  static Future<bool> updateTaskStatus(String agentId, String productId, String roleId, String taskStatus) async {
    Map<String, String> requestHeaders = {'Content-Type': "application/json"};
    var url = Uri.https(Config.apiURL, '/api/updateTaskStatus'); // Ensure the endpoint matches your API

    print('Updating task status to URL: $url');
    var requestBody = {
      "agentId": agentId,
      "productId": productId,
      "roleId": roleId,
      "taskStatus": taskStatus,
    };

    print('Request Payload: ${jsonEncode(requestBody)}');

    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(requestBody),
    );

    // Log response details
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      var responseData = json.decode(response.body);
      return responseData['success'] ?? false; // Adjust according to your API response
    } else {
      print('Failed to update task status with status: ${response.statusCode}');
      print('Error body: ${response.body}');
      return false;
    }
  }

}
