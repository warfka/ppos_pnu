import 'dart:convert';

import 'package:flutter/material.dart';



class MyListScreen extends StatefulWidget {
  @override
  createState() => _MyListScreenState();
}

class _MyListScreenState extends State {
  final titles = ["Анастасия Якубовская", "Алёна Титова", "Егор Сироткин","Марк Драгунов"];
  final titlesN = ['1', '2', '3', '4'];
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
                  title: Text(titles[index]),
                  //subtitle: Text(subtitles[index]),
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
                  trailing: Text((titlesN[index])
              )));
        });
  }
}