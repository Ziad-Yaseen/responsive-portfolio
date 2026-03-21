import 'package:flutter/material.dart';
import 'package:portfolio/components/custom_btn.dart';
import 'package:portfolio/components/custom_row.dart';
import 'package:portfolio/components/full_circle.dart';
import 'package:portfolio/components/item.dart';
import 'package:portfolio/components/location_row.dart';
import 'package:portfolio/styles/app_colors.dart';
import 'package:portfolio/styles/app_texts.dart';
import 'package:portfolio/styles/appbar_style.dart';

class TabletHome extends StatelessWidget {
  const TabletHome({
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
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: FullCircle(
                    asset: 'assets/images/prof.png',
                    radius: 80,
                  ),
                ),
                Center(
                  child: Text(
                    title,
                    style: AppTexts.title.copyWith(fontSize: 28),
                  ),
                ),
                Center(
                  child: Text(
                    'Flutter developer',
                    style: AppTexts.secondaryOrangeText.copyWith(fontSize: 20),
                  ),
                ),
                SizedBox(height: 5),
                LocationRow(location: 'Luxor, Egypt', size: 22),
                CustomRow(projects: 42, followers: 1.2, reviews: 98),
                Padding(
                  padding: EdgeInsetsGeometry.all(8),
                  child: Text(
                    'Summary',
                    style: AppTexts.itemText.copyWith(fontSize: 22),
                    textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsGeometry.only(left: 8),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Aspiring Flutter Developer with a solid foundation in Dart and a passion for building cross-platform mobile applications. Skilled in creating clean UI designs and integrating basic APIs. Quick learner with a strong interest in state management and clean architecture. Committed to writing efficient, maintainable code and continuously improving technical skills through hands-on projects.",
                      style: AppTexts.grayText.copyWith(fontSize: 18),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Spacer(),
                Center(child: CustomBtn(text: 'Go to github')),
                Spacer(),
              ],
            ),
          ),
          VerticalDivider(indent: 50, endIndent: 80),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.only(top: 32, left: 32),
                  child: Text(
                    'Last projects',
                    style: AppTexts.itemText,
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
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
                SizedBox(height: 20),
                Row(
                  children: [
                    Item(
                      mainTxt: 'Project 3: Weather Tracking App',
                      subTxt:
                          'A real-time weather forecasting application that provides accurate meteorological data based on user location. Built with Flutter and integrated with OpenWeatherMap API, the app features dynamic background changes based on weather conditions (sunny, rainy, snowy) and provides a 7-day detailed forecast with interactive charts.',
                    ),
                    SizedBox(height: 20),
                    Item(
                      mainTxt: 'Project 4: Personal Expenses Tracker',
                      subTxt:
                          'A financial management tool designed to help users monitor their daily spending. The app includes features for adding, deleting, and categorizing expenses. It offers a visual breakdown of weekly spending through a custom-built bar chart and uses local storage (Shared Preferences or SQFlite) to persist data across sessions.',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
