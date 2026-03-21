import 'package:flutter/material.dart';
import 'package:portfolio/styles/app_colors.dart';
import 'package:portfolio/styles/app_texts.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key,
    required this.projects,
    required this.followers,
    required this.reviews,
  });
  final int projects;
  final double followers;
  final int reviews;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 20),
          Column(
            children: [
              Text('$projects', style: AppTexts.title),
              Text('Projects', style: AppTexts.grayText),
            ],
          ),
          VerticalDivider(
            indent: 8,
            endIndent: 8,
            thickness: 0.3,
            color: AppColors.mainGrayColor,
          ),
          Column(
            children: [
              Text('${followers}K', style: AppTexts.title),
              Text('Followers', style: AppTexts.grayText),
            ],
          ),
          VerticalDivider(
            indent: 8,
            endIndent: 8,
            thickness: 0.3,
            color: AppColors.mainGrayColor,
          ),
          Column(
            children: [
              Text('$reviews', style: AppTexts.title),
              Text('Reviews', style: AppTexts.grayText),
            ],
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
