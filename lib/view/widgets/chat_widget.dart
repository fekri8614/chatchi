import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    super.key,
    required this.onSendPressed,
    required this.onFilePressed,
  });
  final Function(String)? onSendPressed;
  final void Function()? onFilePressed;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * .9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
      height: 60,
      child: Center(
        child: Row(
          children: [
            IconButton(
              onPressed: onFilePressed,
              icon: const Icon(Icons.file_present),
            ),
            Expanded(
              child: TextField(
                textDirection: Directionality.of(context),
                decoration: const InputDecoration(
                  hintText: "Type a message",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 6),
                ),
                maxLines: null,
                keyboardType: TextInputType.multiline,
              ),
            ),
            IconButton(
              onPressed: onSendPressed!(
                  ''), //to-do: pass the user input to the function
              icon: const Icon(Icons.send_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
