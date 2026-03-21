import 'package:flutter/material.dart';
import 'package:portfolio/screens/home_screens/mobile_home.dart';
import 'package:portfolio/screens/home_screens/tablet_home.dart';

class Home extends StatelessWidget {
  const Home({required this.title, super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return MobileHome(width: width, height: height, title: title);
        } else {
          return TabletHome(width: width, height: height, title: title);
        }
      },
    );
  }
}
