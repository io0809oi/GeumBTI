import 'package:flutter/material.dart';
import 'package:geumbti/widgets/appwidgets.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirstQuestion extends StatelessWidget {
  FirstQuestion({Key? key}) : super(key: key);

  late SharedPreferences prefs;
  late String name;
  Future<void> getName() async {
    prefs = await SharedPreferences.getInstance();
    name = prefs.getString("name") ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FocusUnSetter(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 29),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Q1.",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            LinearPercentIndicator(
              barRadius: Radius.circular(20),
              lineHeight: 8,
              percent: 0.2,
              backgroundColor: Color(0xffF2F2F2),
              progressColor: Color(0xff7C9EDF),
            ),
            SizedBox(
              height: 127,
            ),
            Center(
              child: Text(
                "첫번째 질문",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Spacer(),
            Container(
                height: 58,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Color(0xff7C9EDF), width: 2),
                ),
                child: Center(
                  child: Text(
                    "첫번째 문항",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff7C9EDF)),
                  ),
                )),
            SizedBox(
              height: 12,
            ),
            Container(
                height: 58,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Color(0xff7C9EDF), width: 2),
                ),
                child: Center(
                  child: Text(
                    "두번째 문항",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff7C9EDF)),
                  ),
                )),
            SizedBox(
              height: 12,
            ),
            Container(
                height: 58,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Color(0xff7C9EDF), width: 2),
                ),
                child: Center(
                  child: Text(
                    "세번째 문항",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff7C9EDF)),
                  ),
                )),
            // SizedBox(
            //   height: 12,
            // ),
            // Container(
            //     height: 58,
            //     width: double.infinity,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(100),
            //       border: Border.all(color: Color(0xff7C9EDF), width: 2),
            //     ),
            //     child: Center(
            //       child: Text(
            //         "네번째 문항",
            //         style: TextStyle(
            //             fontSize: 16,
            //             fontWeight: FontWeight.w700,
            //             color: Color(0xff7C9EDF)),
            //       ),
            //     )),
            SizedBox(
              height: 45,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back_ios_new_outlined)),
                  Text(
                    "1/4",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_outlined)),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
          ],
        ),
      )),
    );
  }
}
