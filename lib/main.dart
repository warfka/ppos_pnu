import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ppos_pnu/pages/authorization/authorization_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PPOS_PNU',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: AuthScreen(),
    );
  }
}
