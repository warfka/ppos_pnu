import 'dart:convert';

import 'package:ppos_pnu/pages/main_page.dart';
import 'package:ppos_pnu/api/api_endpoints.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class RegisterationController extends GetxController {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController facultyController = TextEditingController();
  TextEditingController studyGroupController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> registerWithEmail() async {
    try {
      var headers = {'Content-Type': 'application/json'};
      var url = Uri.parse(
          ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.registerEmail);
      Map body = {
        'fullName': fullNameController.text,
        'faculty' : facultyController.text.toUpperCase(),
        'studyGroup' : studyGroupController.text,
        'email': emailController.text.trim(),
        'password': passwordController.text
      };

      http.Response response =
      await http.post(url, body: jsonEncode(body), headers: headers);
      var statusCode = response.statusCode;

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);

          var token = json['token'];
          print(token);
          final SharedPreferences? prefs = await _prefs;

          await prefs?.setString('token', token);
          fullNameController.clear();
          facultyController.clear();
          studyGroupController.clear();
          emailController.clear();
          passwordController.clear();
          Get.off(MainPage());
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
    } catch (e) {
      Get.back();
      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title: Text('Ошибка'),
              contentPadding: EdgeInsets.all(20),
              backgroundColor: Colors.redAccent,
              children: [Text(e.toString())],
            );
          });
    }
  }
}