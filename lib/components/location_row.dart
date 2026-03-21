import 'package:flutter/material.dart';
import 'package:portfolio/styles/app_colors.dart';
import 'package:portfolio/styles/app_icons.dart';
import 'package:portfolio/styles/app_texts.dart';

class LocationRow extends StatelessWidget {
  const LocationRow({super.key, required this.location, required this.size});
  final String location;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(AppIcons.location, color: AppColors.grayColor, size: size),
        SizedBox(width: 5),
        Text(
          location,
          textAlign: TextAlign.center,
          style: AppTexts.grayText.copyWith(fontSize: size - 5),
        ),
      ],
    ); // 14
  }
}
