import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:geumbti/page/first_question.dart';
import 'package:geumbti/page/seventh_question.dart';
import 'package:geumbti/widgets/appwidgets.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    final double appwidth = width >= 500 ? 500 : width;
    return Scaffold(
      body: FocusUnSetter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: appwidth,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "본 테스트는 Chrome 환경에 최적화 되어있습니다.\n다른 환경에서는 일부 기능이 사용 불가할 수도 있습니다.",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff939393)),
                  ),
                ),
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
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 67),
                child: Column(
                  children: [
                    SizedBox(
                      width: appwidth,
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
                    Center(
                      child: RawMaterialButton(
                        onPressed: () async {
                          if (nameController.text.toString() == "" ||
                              nameController.text.toString() == null) {
                            Get.snackbar(
                                "이름을 입력해주세요", "이름을 입력하지 않으셨습니다. 이름을 입력해주세요.",
                                backgroundColor: Color(0xff7C9EDF),
                                colorText: Colors.white,
                                snackPosition: SnackPosition.BOTTOM);
                          } else {
                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            prefs.setString(
                                "name", nameController.text.toString());

                            Get.toNamed("/first_question");
                          }
                        },
                        child: Container(
                          width: appwidth,
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
                      ),
                    )
                  ],
                ),
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
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
