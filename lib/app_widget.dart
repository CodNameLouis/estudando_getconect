import 'package:estudando_getconect/presenter/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xfff4b4ff),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff3b0037),
        ),
        primarySwatch:  Colors.purple,
      ),
      home: const HomePage(),
    );
  }
}
