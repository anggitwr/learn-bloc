import 'package:flutter/cupertino.dart';
import 'package:learn_bloc/config/theme/app_color.dart';
import 'package:learn_bloc/config/theme/app_font.dart';
import 'package:learn_bloc/utils/extension/double_extension.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RichText(
          text: TextSpan(children: [
            TextSpan(
              text: "Forgot Password? ",
              style: AppFont.textnormal.copyWith(color: AppColor.ink02),
            ),
            TextSpan(text: "Reset ", style: AppFont.smallBold)
          ]),
        ),
        5.0.height,
        RichText(
          text: TextSpan(children: [
            TextSpan(
              text: "Don\'t have an account? ",
              style: AppFont.textnormal.copyWith(color: AppColor.ink02),
            ),
            TextSpan(text: "Register ", style: AppFont.smallBold)
          ]),
        ),
      ],
    );
  }
}
