import 'package:flutter/material.dart';
import 'package:portfolio/screens/home.dart';

void main() {
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ziad Yaseen',
      home: const Home(title: 'Ziad Yaseen'),
    );
  }
}