import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/style/font/font_weight_helper.dart';
import 'package:asroo_store/core/utils/context_extension.dart';
import 'package:flutter/material.dart';

class AuthTitleInfo extends StatelessWidget {
  const AuthTitleInfo({
    required this.description,
    required this.title,
    super.key,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // title
        TextApp(
          text: title,
          theme: context.textStyle.copyWith(
            fontSize: 24,
            fontWeight: FontWeightHelper.bold,
            color: context.color.textColor,
          ),
        ),
        const SizedBox(height: 10),
        TextApp(
          text: description,
          theme: context.textStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeightHelper.medium,
            color: context.color.textColor,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
