import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
class MyCustomTile extends StatelessWidget {
  String title;
  String? subtitle;
  IconData? icon;
  String? trailing;
  VoidCallback onClickEvent;

  MyCustomTile(
      { this.icon, required this.onClickEvent, this.subtitle, required this.title, this.trailing});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onClickEvent,

      title: Text(title),
      leading: CircleAvatar(
        //child: Text("H"),
        //child: Icon(icon),
        child: icon == null?Text(title[0]):Icon(icon),
      ),
      trailing: Text(trailing??''),

    );
  }
}
