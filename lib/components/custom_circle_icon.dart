import 'package:flutter/material.dart';
import 'package:portfolio/styles/app_colors.dart';

class CustomCircleIcon extends StatelessWidget {
  final IconData icon;
  const CustomCircleIcon({required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.veryLightColor,
      radius: 20,
      child: CircleAvatar(
        backgroundColor: AppColors.primaryColorOrange,
        radius: 15,
        child: Icon(icon, color: AppColors.whiteColor, size: 17),
      ),
    );
  }
}
