import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_bloc/presentation/pages/addd/addd_view.dart';
import 'package:learn_bloc/presentation/pages/discover/discover_view.dart';
import 'package:learn_bloc/presentation/pages/welcome/login/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: 'Poppins',
          ),
          home: const DiscoverPage(),
        );
      },
    );
  }
}
