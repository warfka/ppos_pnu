// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputTextFieldWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final bool obscureText;
  InputTextFieldWidget(this.textEditingController, this.hintText, this.obscureText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 60,
      child: TextField(
        obscureText: obscureText,
        controller: textEditingController,
        decoration: InputDecoration(
            //suffix: Icon(FontAwesomeIcons.eyeSlash,color: Colors.red,),
            labelText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            )
        ),
      ),
    );
  }
}