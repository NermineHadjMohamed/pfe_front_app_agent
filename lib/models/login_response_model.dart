import 'dart:convert';

LoginResponseModel loginResponseJson(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

class LoginResponseModel {
<<<<<<< HEAD
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
=======
  String? message;
  Data? data;

  LoginResponseModel({this.message, this.data});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? fullName;
  String? email;
  String? userId;
  List<Roles>? roles;
  String? token;

  Data({this.fullName, this.email, this.userId, this.roles, this.token});

  Data.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'];
    email = json['email'];
    userId = json['userId'];
    if (json['roles'] != null) {
      roles = <Roles>[];
      json['roles'].forEach((v) {
        roles!.add(new Roles.fromJson(v));
      });
    }
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullName'] = this.fullName;
    data['email'] = this.email;
    data['userId'] = this.userId;
    if (this.roles != null) {
      data['roles'] = this.roles!.map((v) => v.toJson()).toList();
    }
    data['token'] = this.token;
    return data;
>>>>>>> 0a0ccd66aaa85b1f0def1417ac45e1a9d89839b3
  }
}

class Roles {
  String? id;
  String? roleName;
  String? description;

  Roles({this.id, this.roleName, this.description});

  Roles.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    roleName = json['role_name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['role_name'] = this.roleName;
    data['description'] = this.description;
    return data;
  }
}

