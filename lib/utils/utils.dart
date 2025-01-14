import 'package:flutter/material.dart';

bool isUserKeyboardLanguageEnglish(BuildContext context) {
  Locale locale = Localizations.localeOf(context);
  return locale.languageCode == 'en';
}

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
    ),
  );
}