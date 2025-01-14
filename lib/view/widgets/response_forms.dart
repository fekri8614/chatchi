import 'package:chatchi_new/data/models/response_model.dart';
import 'package:chatchi_new/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../res/theme/app_text_style.dart';

class UserResponseCard extends StatelessWidget {
  const UserResponseCard({
    super.key,
    required this.userResponse,
  });
  final ResponseModel userResponse;

  @override
  Widget build(BuildContext context) {
    bool isEnglish = isUserKeyboardLanguageEnglish(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 4),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(11, 207, 14, 8).withOpacity(.30),
            borderRadius: BorderRadius.circular(22),
          ),
          width: 210,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment:
                    isEnglish ? Alignment.centerRight : Alignment.centerLeft,
                child: Text(
                  userResponse.response,
                  style: AppTextStyle.blackBoldTitleX14,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    '${userResponse.whom}, ',
                    style: AppTextStyle.blackBoldTitleX10,
                  ),
                  Text(
                    userResponse.dateOrTime,
                    style: AppTextStyle.blackBoldTitleX8,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ResponseCard extends StatelessWidget {
  const ResponseCard({super.key, required this.response});
  final ResponseModel response;

  @override
  Widget build(BuildContext context) {
    bool isEnglish = isUserKeyboardLanguageEnglish(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 4),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white38,
            borderRadius: BorderRadius.circular(22),
          ),
          width: 210,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment:
                    isEnglish ? Alignment.centerRight : Alignment.centerLeft,
                child: Text(
                  response.response,
                  style: AppTextStyle.blackBoldTitleX14,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    '${response.whom}, ',
                    style: AppTextStyle.blackBoldTitleX10,
                    textDirection:
                        isEnglish ? TextDirection.ltr : TextDirection.rtl,
                  ),
                  Text(
                    response.dateOrTime,
                    style: AppTextStyle.blackBoldTitleX8,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
