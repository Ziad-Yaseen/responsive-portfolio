import 'package:flutter/material.dart';
import 'package:portfolio/components/custom_circle_icon.dart';
import 'package:portfolio/components/custom_circle_image.dart';
import 'package:portfolio/styles/app_colors.dart';
import 'package:portfolio/styles/app_icons.dart';

class FullCircle extends StatelessWidget {
  const FullCircle({super.key, required this.asset, required this.radius});
  final String asset;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomCircleImage(asset: asset, radius: radius),
        Positioned(
          bottom: 0,
          right: 0,
          child: CircleAvatar(
            backgroundColor: AppColors.veryLightColor,
            radius: 20,
            child: CustomCircleIcon(icon: AppIcons.edit),
          ),
        ),
      ],
    );
  }
}
