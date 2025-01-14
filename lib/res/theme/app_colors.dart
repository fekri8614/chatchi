import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static final AppColors _instance = AppColors._();
  factory AppColors() => _instance;

  static const Color primaryColor = Color.fromRGBO(0, 229, 0, 50);
  static const Color lightPrimaryColor = Color.fromRGBO(146, 237, 147, 1);
  static Color accentColor = const Color.fromRGBO(0, 223, 0, 50);
  static const Color greyTextColor = Color.fromRGBO(0, 0, 0, 25);
  static Color redColor = Colors.red;
}
