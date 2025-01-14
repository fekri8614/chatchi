import 'package:chatchi_new/view/widgets/response_forms.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:chatchi_new/res/theme/app_colors.dart';
import 'package:chatchi_new/res/theme/app_text_style.dart';

import '../data/models/response_model.dart';
import 'widgets/chat_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightPrimaryColor,
      floatingActionButton: ChatWidget(
        onSendPressed: (message) {},
        onFilePressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text("ChatChi"),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: AppColors.lightPrimaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor.withOpacity(0.60),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ChatChi',
                        style: AppTextStyle.whiteBoldTitleX32,
                      ),
                      Text(
                        'Chat with ChatGPT',
                        style: AppTextStyle.whiteNormalTextX16,
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.account_circle),
                  title: const Text('Login to your account'),
                  onTap: () {
                    if (kDebugMode) print('Login pressed');
                  },
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Developed by ❤️',
                style: AppTextStyle.blackNormalTextX16,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ResponseCard(
                response: ResponseModel(
                  whom: 'ChatGPT',
                  response: 'Hello there! How can I help you today?',
                  dateOrTime: '12:00',
                ),
              ),
              UserResponseCard(
                userResponse: ResponseModel(
                  whom: 'You',
                  response: 'یک کمکی نیاز دارم',
                  dateOrTime: '12:01',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
