import 'package:flutter/material.dart';
import 'package:portfolio/styles/app_buttons.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: AppButtons.elevatedButtonStyle,
      child: Text(text),
      onPressed: () {},
    );
  }
}
