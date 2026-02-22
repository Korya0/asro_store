import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/style/font/font_weight_helper.dart';
import 'package:asroo_store/core/utils/context_extension.dart';
import 'package:asroo_store/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:asroo_store/features/auth/presentation/widgets/dark_and_light_buttons.dart';
import 'package:asroo_store/features/auth/presentation/widgets/sign_up/sign_up_button.dart';
import 'package:asroo_store/features/auth/presentation/widgets/sign_up/sign_up_text_form.dart';
import 'package:asroo_store/features/auth/presentation/widgets/sign_up/user_avatar_image.dart';
import 'package:asroo_store/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Dark mode and language
                const DarkAndLangButtons(),

                const SizedBox(height: 20),

                // Welcome Info
                AuthTitleInfo(
                  title: S.of(context).sign_up,
                  description: S.of(context).sign_up_welcome,
                ),
                const SizedBox(height: 10),

                //User Avatar image
                const UserAvararImage(),

                const SizedBox(height: 20),

                // signup TextForm
                const SignUpTextForm(),

                const SizedBox(height: 20),
                //signUpButton
                const SignUpButton(),

                const SizedBox(height: 20),

                // Go To Login Screen
                TextButton(
                  onPressed: () {
                    context.pop();
                  },
                  child: TextApp(
                    text: S.of(context).you_have_account,
                    theme: context.textStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeightHelper.bold,
                      color: context.color.bluePinkLight,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
