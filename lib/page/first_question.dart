import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:geumbti/page/second_question.dart';
import 'package:geumbti/page/third_question.dart';
import 'package:geumbti/widgets/appwidgets.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirstQuestion extends StatelessWidget {
  FirstQuestion({
    Key? key,
  }) : super(key: key);

  List<bool> isSelected = [false, false, false, false].obs;
  List<bool> ishovered = [false, false, false, false].obs;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    final double appwidth = width >= 500 ? 500 : width;
    return Scaffold(
      body: FocusUnSetter(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 29),
        child: Obx(() {
          return Center(
            child: SizedBox(
              width: appwidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                            ),
                            iconSize: 15),
                        Text(
                          "Q1.",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        IconButton(
                            iconSize: 15,
                            onPressed: () {
                              if (isSelected[0] == true ||
                                  isSelected[1] == true) {
                                if (isSelected[0] == true) {
                                  Get.toNamed(
                                    "/second_question",
                                  );
                                } else if (isSelected[1] == true) {
                                  Get.toNamed(
                                    "/third_question",
                                  );
                                }
                              }
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios,
                            ))
                      ],
                    ),
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
                      "나는 투자에 관심이 많다",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onHover: (value) {
                      ishovered[0] = value;
                    },
                    onTap: () {
                      isSelected[0] = true;
                      isSelected[1] = false;
                      Get.toNamed("/second_question");
                    },
                    child: Container(
                        height: 58,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: ishovered[0] || isSelected[0]
                              ? Color(0xff7C9EDF)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                              color: ishovered[0] || isSelected[0]
                                  ? Colors.transparent
                                  : Color(0xff7c9edf),
                              width: 2),
                        ),
                        child: Center(
                          child: Text(
                            "예",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: ishovered[0] || isSelected[0]
                                    ? Colors.white
                                    : Color(0xff7C9EDF)),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  InkWell(
                    onHover: (value) {
                      ishovered[1] = value;
                    },
                    onTap: () {
                      isSelected[1] = true;
                      isSelected[0] = false;
                      Get.toNamed("/third_question");
                    },
                    child: Container(
                        height: 58,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: ishovered[1] || isSelected[1]
                              ? Color(0xff7C9EDF)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                              color: ishovered[1] || isSelected[1]
                                  ? Colors.transparent
                                  : Color(0xff7c9edf),
                              width: 2),
                        ),
                        child: Center(
                          child: Text(
                            "아니오",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: ishovered[1] || isSelected[1]
                                    ? Colors.white
                                    : Color(0xff7C9EDF)),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Center(
                      child: Text(
                    "21EB",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff7C9EDF)),
                  )),
                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
          );
        }),
      )),
    );
  }
}
