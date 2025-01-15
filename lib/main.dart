import 'package:chatchi_new/res/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'view/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatChi',
      theme: appTheme(),
      debugShowCheckedModeBanner: false,
      home: const ChatScreen(),
    );
  }
}
