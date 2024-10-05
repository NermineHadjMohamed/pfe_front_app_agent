import 'dart:convert';

import 'package:demo_app/config.dart';
import 'package:demo_app/models/ProductResponse.dart';
import 'package:demo_app/models/login_response_model.dart';
import 'package:demo_app/models/product.dart';
import 'package:demo_app/models/task.dart';
import 'package:demo_app/utils/shared_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

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
        // Save the token and agentId in SharedPreferences
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', loginResponse.data.token);
        await prefs.setString(
            'agentId', loginResponse.data.agentId); // Save agentId
        print('Token saved: ${loginResponse.data.token}');
        print('AgentId saved: ${loginResponse.data.agentId}'); // Log agentId

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

  static Future<void> startTask(Task task) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');

    if (token == null) {
      print('Error: Token is null, unable to send task completion data');
      return;
    }
    var url = Uri.https(Config.apiURL, Config.startTaskAPI);
    print('Starting task at URL: $url');

    var response = await client.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: jsonEncode(task.toJson()), // Pass the Task object
    );

    if (response.statusCode == 200) {
      print('Task started successfully');
      return;
    } else {
      print('Failed to start task: ${response.statusCode}');
      print('Error body: ${response.body}');
      return;
    }
  }

  static Future<void> sendFinishTaskApi(Task task) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');

    if (token == null) {
      print('Error: Token is null, unable to send task completion data');
      return;
    }

    var url =
        Uri.https(Config.apiURL, Config.finishTaskAPI); // Correct API endpoint

    // Set finish time to current time
    task.finishTime = DateTime.now();
    print(task.toJson());
    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(task.toJson()), // Use the updated task object
      );

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        if (jsonResponse['success'] == true) {
          print('Task completion successfully recorded in the API.');
        } else {
          print('API response error: ${jsonResponse['message']}');
        }
      } else {
        print(
            'Failed to send task completion data. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error sending task completion data: $e');
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
