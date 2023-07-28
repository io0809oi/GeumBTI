import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:geumbti/page/fifth_question.dart';
import 'package:geumbti/page/first_question.dart';
import 'package:geumbti/page/fourth_question.dart';
import 'package:geumbti/page/homepage.dart';
import 'package:geumbti/page/results/result_Panda.dart';
import 'package:geumbti/page/results/result_Quokka.dart';
import 'package:geumbti/page/results/result_Sloth.dart';
import 'package:geumbti/page/results/result_Squirrel.dart';
import 'package:geumbti/page/results/result_TibetFox.dart';
import 'package:geumbti/page/second_question.dart';
import 'package:geumbti/page/seventh_question.dart';
import 'package:geumbti/page/sixth_question.dart';
import 'package:geumbti/page/third_question.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

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
      initialRoute: '/',
      transitionDuration: Duration(milliseconds: 500),
      getPages: [
        GetPage(name: "/first_question", page: () => FirstQuestion()),
        GetPage(name: "/second_question", page: () => SecondQuestion()),
        GetPage(name: "/third_question", page: () => ThirdQuestion()),
        GetPage(name: "/fourth_question", page: () => FourthQuestion()),
        GetPage(name: "/fifth_question", page: () => FifthQuestion()),
        GetPage(name: "/sixth_question", page: () => SixthQuestion()),
        GetPage(name: "/seventh_question", page: () => SeventhQuestion()),
        GetPage(name: "/result_panda", page: () => ResultPanda()),
        GetPage(name: "/result_quokka", page: () => ResultQuokka()),
        GetPage(name: "/result_sloth", page: () => ResultSloth()),
        GetPage(name: "/result_squirrel", page: () => ResultSquirrel()),
        GetPage(name: "/result_tibetfox", page: () => ResultTibetFox()),
      ],
    );
  }
}
