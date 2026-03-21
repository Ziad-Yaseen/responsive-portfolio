import 'package:flutter/material.dart';
import 'package:portfolio/styles/app_colors.dart';
import 'package:portfolio/styles/app_texts.dart';

class Item extends StatelessWidget {
  final String mainTxt;
  final String subTxt;

  const Item({required this.mainTxt, required this.subTxt, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 16),
        color: AppColors.mediumOrangeColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(mainTxt, style: AppTexts.itemText),
              Text(
                subTxt,
                style: AppTexts.grayText,
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
