import 'package:asroo_store/core/common/widgets/custom_linear_button.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/style/font/font_weight_helper.dart';
import 'package:asroo_store/core/utils/context_extension.dart';
import 'package:asroo_store/generated/l10n.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomLinearButton(
      onPressed: () {},
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: TextApp(
        text: S.of(context).login,
        theme: context.textStyle.copyWith(
          fontSize: 18,
          fontWeight: FontWeightHelper.bold,
        ),
      ),
    );
  }
}
