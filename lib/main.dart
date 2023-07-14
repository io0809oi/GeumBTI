import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:geumbti/page/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'GmarketSans',
      ),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fadeIn,
      home: HomePage(),
    );
  }
}
