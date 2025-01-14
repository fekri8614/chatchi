import 'package:chatchi_new/res/theme/app_text_style.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData appTheme() {
  return ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.primaryColor,
    hintColor: AppColors.accentColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryColor.withOpacity(0.60),
      elevation: 0,
      centerTitle: true,
      titleTextStyle: AppTextStyle.whiteNormalTextX32,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: Colors.white,
      elevation: 4,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        color: AppColors.greyTextColor.withOpacity(0.5),
      ),
      enabledBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      errorBorder: InputBorder.none,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        side: WidgetStateProperty.all(
          const BorderSide(
            color: AppColors.primaryColor,
          ),
        ),
        foregroundColor: WidgetStateProperty.all(AppColors.primaryColor),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.primaryColor),
        foregroundColor: WidgetStateProperty.all(Colors.white),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(AppColors.primaryColor),
      ),
    ),
  );
}
