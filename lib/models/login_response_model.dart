import 'dart:convert';

LoginResponseModel loginResponseJson(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

class LoginResponseModel {
  late final String message;
  late final LoginData data;

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    message = json["message"];
    data = LoginData.fromJson(json["data"]["data"]);  // Adjusted for nested structure
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['data'] = data.toJson();
    return _data;
  }
}

class LoginData {
  late final String fullName;
  late final String email;
  late final String agentId;
  late final String token;

  LoginData.fromJson(Map<String, dynamic> json) {
    fullName = json["fullName"] ?? ''; // Handle null values
    email = json["email"] ?? '';
    agentId = json["agentId"] ?? '';
    token = json["token"] ?? '';
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['fullName'] = fullName;
    _data['email'] = email;
    _data['agentId'] = agentId;
    _data['token'] = token;
    return _data;
  }
}