import 'package:ppos_pnu/globals.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:ppos_pnu/api/api_endpoints.dart';
import 'package:ppos_pnu/pages/main_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  var _UserToken;

  Future<void> loginWithEmail() async {
    var headers = {'Content-Type': 'application/json'};
    try {
      var url = Uri.parse(
          ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.loginEmail);
      Map body = {
        'email': emailController.text.trim(),
        'password': passwordController.text
      };
      http.Response response =
      await http.post(url, body: jsonEncode(body), headers: headers);
      var statusCode = response.statusCode;

      if (statusCode == 200) {
        final json = jsonDecode(response.body);

          var token = json['token'];
          final SharedPreferences? prefs = await _prefs;
          await prefs?.setString('token', token);

          emailController.clear();
          passwordController.clear();
          Get.off(MainPage());

        _UserToken = token;
        print(token);

      } else {
        showDialog(
            context: Get.context!,
            builder: (context) {
              return SimpleDialog(
                title: Text('Ошибка'),
                contentPadding: EdgeInsets.all(20),
                children: [Text('Код ошибки: $statusCode')],
                backgroundColor: Colors.redAccent,
              );
            });
      }
    } catch (error) {
      Get.back();
      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title: Text('Ошибка'),
              contentPadding: EdgeInsets.all(20),
              backgroundColor: Colors.redAccent,
              children: [Text(error.toString())],
            );
          });
    }
  }
}