import 'package:flutter/material.dart';
import 'package:portfolio/components/custom_row.dart';
import 'package:portfolio/components/full_circle.dart';
import 'package:portfolio/components/item.dart';
import 'package:portfolio/components/location_row.dart';
import 'package:portfolio/styles/app_colors.dart';
import 'package:portfolio/styles/app_texts.dart';
import 'package:portfolio/styles/appbar_style.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({
    super.key,
    required this.width,
    required this.height,
    required this.title,
  });
  final double width;
  final double height;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.veryLightColor,
      appBar: AppbarStyle.appbar(title),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: FullCircle(asset: 'assets/images/prof.png', radius: 60,)),
            Center(child: Text(title, style: AppTexts.title)),
            Center(
              child: Text(
                'Flutter developer',
                style: AppTexts.secondaryOrangeText,
              ),
            ),
            SizedBox(height: 5),
            LocationRow(location: 'Luxor, Egypt',size: 17,),
            CustomRow(projects: 42, followers: 1.2, reviews: 98),
            Padding(
              padding: EdgeInsetsGeometry.all(8),
              child: Text(
                'Summary',
                style: AppTexts.itemText,
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(left: 8),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Aspiring Flutter Developer with a solid foundation in Dart and a passion for building cross-platform mobile applications. Skilled in creating clean UI designs and integrating basic APIs. Quick learner with a strong interest in state management and clean architecture. Committed to writing efficient, maintainable code and continuously improving technical skills through hands-on projects.",
                  style: AppTexts.grayText,
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(8),
              child: Text(
                'Last projects',
                style: AppTexts.itemText,
                textAlign: TextAlign.start,
              ),
            ),
            Item(
              mainTxt: 'Project 1: BMI Calculator',
              subTxt:
                  'A sleek and modern Body Mass Index calculator built with Flutter. It features a custom dark-themed UI with neon glow effects, interactive sliders for height selection, and dynamic weight/age counters. The app utilizes a modular architecture with custom reusable widgets and provides personalized health interpretations based on user input.',
            ),
            SizedBox(height: 20),
            Item(
              mainTxt: 'Project 2: Toku Language App',
              subTxt:
                  'A multi-category language learning application designed to help users learn Japanese. The app includes structured sections for Numbers, Family Members, Colors, and Phrases. Built using Flutter, it focuses on high-quality audio integration and a clean, intuitive user interface to enhance the learning experience.',
            ),
          ],
        ),
      ),
    );
  }
}
