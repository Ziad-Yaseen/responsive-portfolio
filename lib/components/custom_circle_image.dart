import 'package:flutter/material.dart';
import 'package:portfolio/styles/app_colors.dart';

class CustomCircleImage extends StatelessWidget {
  final String asset;
  final double radius;

  const CustomCircleImage({
    super.key,
    required this.asset,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: AppColors.secondaryColorOrange,
      child: CircleAvatar(
        backgroundColor: AppColors.primaryColorOrange,
        radius: radius - 4,
        child: CircleAvatar(
          radius: radius - 7,
          backgroundImage: AssetImage(asset),
        ),
      ),
    );
  }
}
