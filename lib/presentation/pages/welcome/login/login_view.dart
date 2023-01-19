import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/presentation/pages/welcome/login/component/login_footer.dart';
import 'package:learn_bloc/presentation/pages/welcome/login/component/login_form.dart';
import 'package:learn_bloc/presentation/pages/welcome/login/component/login_image.dart';
import 'package:learn_bloc/utils/utils.dart';

import 'login_cubit.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<LoginCubit>(context);

    return Scaffold(
      body: Column(
        children: [
          36.0.height,
          LoginImage(),
          LoginForm(),
          16.0.height,
          LoginFooter()
        ],
      ),
    );
  }
}
