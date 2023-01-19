import 'package:flutter/material.dart';
import 'package:learn_bloc/config/theme/app_dimen.dart';
import 'package:learn_bloc/config/theme/app_font.dart';
import 'package:learn_bloc/presentation/widget/app_button.dart';
import 'package:learn_bloc/presentation/widget/app_input_text.dart';
import 'package:learn_bloc/utils/extension/double_extension.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          32.0.height,
          Text("Login", style: AppFont.title),
          16.0.height,
          const AppInputText(label: "email"),
          10.0.height,
          const AppInputText(label: "password"),
          10.0.height,
          AppButton(
            onPressed: () {},
            text: "Login",
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
