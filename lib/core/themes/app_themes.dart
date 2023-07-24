import '../constants/my_colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();
  static final light = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primaryColor),
    useMaterial3: true,
  );

  static final dark = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primaryColor),
    useMaterial3: true,
  );
}
