import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:geumbti/page/first_question.dart';
import 'package:geumbti/widgets/appwidgets.dart';
import 'package:share/share.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  late SharedPreferences prefs;

  Future<void> saveName() async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString("name", nameController.text.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FocusUnSetter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "본 테스트는 핸드폰 화면에 최적화되어 있습니다.",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff939393)),
              ),
            ),
            SizedBox(
              height: 95,
            ),
            Center(
              child: Text(
                "금융 MBTI 심리테스트",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff939393),
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 41,
            ),
            Center(
              child: Image.asset(
                "assets/images/logo.png",
              ),
            ),
            SizedBox(
              height: 63,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 67),
              child: Column(
                children: [
                  SizedBox(
                    height: 49,
                    child: TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Color(0xffD9D9D9),
                          ),
                        ),
                        hintText: "이름을 입력해주세요",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RawMaterialButton(
                    onPressed: () async {
                      await saveName();
                      Get.to(() => FirstQuestion());
                    },
                    child: Container(
                      height: 49,
                      child: Center(
                        child: Text(
                          "테스트 하러가기",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff7C9EDF),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
            Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  "kdmhs 21EB",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff939393),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
