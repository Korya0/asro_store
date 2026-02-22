import 'package:asroo_store/core/common/widgets/custom_linear_button.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/style/font/font_weight_helper.dart';
import 'package:asroo_store/core/utils/context_extension.dart';
import 'package:asroo_store/generated/l10n.dart';
import 'package:flutter/material.dart';

class DarkAndLangButtons extends StatelessWidget {
  const DarkAndLangButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Dark Mode Button
        CustomLinearButton(
          onPressed: () {},
          child: const Icon(
            Icons.light_mode_rounded,
            color: Colors.white,
          ),
        ),
        //Language Button
        CustomLinearButton(
          onPressed: () {},
          height: 44,
          width: 100,
          child: TextApp(
            text: S.of(context).language,
            theme: context.textStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeightHelper.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
