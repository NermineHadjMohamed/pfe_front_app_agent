import 'dart:convert';
import 'package:demo_app/config.dart';
import 'package:demo_app/models/ProductResponse.dart';
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
      print(
          'Error body: ${response.body}'); // This will help you see the full error response
      return false;
    }
  }


  //  static Future<ProductResponse?> fetchProductByNfcTag(String nfcTagId) async {
  //   var url = Uri.https(Config.apiURL, '/api/tag/$nfcTagId');
  //   final response = await http.get(url, headers: {
  //     'Content-Type': 'application/json',
  //     'Authorization': 'Bearer your-auth-token', // Add auth token if needed
  //   });

  //   if (response.statusCode == 200) {
  //     // Deserialize the JSON response to ProductResponse
  //     return ProductResponse.fromJson(json.decode(response.body));
  //   } else {
  //     print('Failed to fetch data');
  //     return null;
  //   }
  // }
}
