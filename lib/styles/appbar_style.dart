import 'package:flutter/material.dart';

class AppbarStyle {
  static AppBar appbar(String title) {
    return AppBar(
      centerTitle: true,
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      actions: [Icon(Icons.more_vert_rounded), SizedBox(width: 20)],
      leading: Icon(Icons.arrow_back_ios_new_rounded),
      backgroundColor: Color(0xFFf8f6f6),
    );
  }
}
