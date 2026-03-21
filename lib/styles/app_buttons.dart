import 'package:flutter/material.dart';
import 'package:portfolio/styles/app_colors.dart';

class AppButtons {
  static final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.primaryColorOrange,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );
}
