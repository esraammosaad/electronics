import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<Map<String, dynamic>> login(
      {required String email, required String password}) async {
    http.Response response =
        await http.post(Uri.parse('https://e-commerce-zeyad.onrender.com/api/v1/auth/login'),
            body: jsonEncode({
              'email': email,
              'password': password,
            }),headers: {
              'Accept': '*/*',
              'Content-Type': 'application/json',

            });
    Map<String, dynamic> data = jsonDecode(response.body);
    debugPrint(data.toString());

    return data;
  }

  Future<Map<String, dynamic>> register(
      {required String userName,
      required String email,
      required String password,
      required String confirmPassword}) async {
    http.Response response = await http.post(
        Uri.parse('https://e-commerce-zeyad.onrender.com/api/v1/auth/register'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(<String, String>{
          'email': email,
          'password': password,
          'name': userName,
          'passwordConfirm': confirmPassword
        }));
    Map<String, dynamic> data = jsonDecode(response.body);

    return data;
  }
}
