import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/style/font/font_weight_helper.dart';
import 'package:asroo_store/core/utils/context_extension.dart';
import 'package:asroo_store/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:asroo_store/features/auth/presentation/widgets/dark_and_light_buttons.dart';
import 'package:asroo_store/features/auth/presentation/widgets/login/login_button.dart';
import 'package:asroo_store/features/auth/presentation/widgets/login/login_text_form.dart';
import 'package:asroo_store/generated/l10n.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              spacing: 30,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: DarkAndLangButtons(),
                ),
                AuthTitleInfo(
                  description: S.of(context).welcome,
                  title: S.of(context).login,
                ),
                const LoginTextForm(),

                const LoginButton(),
                TextApp(
                  text: S.of(context).create_account,
                  theme: context.textStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeightHelper.bold,
                    color: context.color.bluePinkLight,
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
