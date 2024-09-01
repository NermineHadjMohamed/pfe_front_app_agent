import 'dart:convert';

import 'package:demo_app/config.dart';
import 'package:demo_app/models/login_response_model.dart';
import 'package:demo_app/utils/shared_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;


final apiService = Provider((ref) => APIService());

class APIService {
  static var client = http.Client();



  static Future<bool> loginAgent(
    String email,
    String password,
  ) async {
    Map<String, String> requestHeaders = {'Content-Type': "application/json"};

    var url = Uri.https(Config.apiURL, Config.loginAPI);
    var response = await client.post(url,
        headers: requestHeaders,
        body: jsonEncode({"email": email, "password": password}));
    if (response.statusCode == 200) {
      await SharedService.setLoginDetails(loginResponseJson(response.body));
      return true;
    } else {
      return false;
    }
  }





  
  

  

  
}
