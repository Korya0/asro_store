import 'package:asroo_store/core/common/widgets/custom_text_field.dart';
import 'package:asroo_store/core/utils/app_aregex.dart';
import 'package:asroo_store/core/utils/context_extension.dart';
import 'package:asroo_store/generated/l10n.dart';
import 'package:flutter/material.dart';

class SignUpTextForm extends StatefulWidget {
  const SignUpTextForm({super.key});

  @override
  State<SignUpTextForm> createState() => _SignUpTextFormState();
}

class _SignUpTextFormState extends State<SignUpTextForm> {
  bool isShowPassword = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          //Email
          CustomTextField(
            controller: TextEditingController(),
            hintText: S.of(context).full_name,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              // app regex
              if (AppRegex.isEmailValid('')) {
                return S.of(context).valid_email;
              }
              return null;
            },
          ),

          const SizedBox(height: 25),
          //Email
          CustomTextField(
            controller: TextEditingController(),
            hintText: S.of(context).your_email,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              // app regex
              if (AppRegex.isEmailValid('')) {
                return S.of(context).valid_email;
              }
              return null;
            },
          ),

          const SizedBox(height: 25),
          //Password
          CustomTextField(
            controller: TextEditingController(),
            hintText: S.of(context).password,
            keyboardType: TextInputType.visiblePassword,
            obscureText: isShowPassword,
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 6) {
                return S.of(context).valid_passwrod;
              }
              return null;
            },
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isShowPassword = !isShowPassword;
                });
              },
              icon: Icon(
                isShowPassword ? Icons.visibility_off : Icons.visibility,
                color: context.color.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
