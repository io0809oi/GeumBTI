import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:geumbti/widgets/appwidgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:share_plus/share_plus.dart';

class ResultSquirrel extends StatelessWidget {
  ResultSquirrel({Key? key, this.name}) : super(key: key);
  final String? name;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    final double appwidth = width >= 500 ? 500 : width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: NoPadFocusUnSetter(
            child: Center(
          child: SizedBox(
            width: appwidth,
            child: Column(
              children: [
                Container(
                  height: context.heightTransformer(dividedBy: 844 / 352),
                  color: Color(0xffFFC6B4),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(children: [
                      SizedBox(height: 29),
                      Row(
                        children: [
                          Builder(builder: (context) {
                            if (name == null) {
                              return Text("당신의 금융 MBTI는...",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff3e3e3e)));
                            } else {
                              return Text("$name 님의 금융 MBTI는...",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff3e3e3e)));
                            }
                          }),
                          Spacer(),
                          IconButton(
                              iconSize: 20,
                              hoverColor: Colors.black,
                              onPressed: () async {
                                Get.defaultDialog(
                                    title: "공유하기",
                                    content: Column(
                                      children: [
                                        Text("금융 MBTI 결과를 공유합니다."),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            ElevatedButton(
                                                onPressed: () async {
                                                  var prefs =
                                                      await SharedPreferences
                                                          .getInstance();
                                                  var name =
                                                      prefs.getString("name");
                                                  await Share.share(
                                                    "${name}님의 금융 MBTI 결과는 다람쥐입니다!\n당신도 지금 바로 금융 mbti 테스트를 해보세요!\nhttps://geumbti.web.app/#/",
                                                    subject:
                                                        "금융 MBTI 테스트를 해보세요!",
                                                  );
                                                },
                                                child: Text("공유하기")),
                                            ElevatedButton(
                                                onPressed: () {
                                                  Get.back();
                                                },
                                                child: Text("취소하기")),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("테스트 링크 복사하기"),
                                            IconButton(
                                              icon: Icon(Icons.copy),
                                              onPressed: () async {
                                                Clipboard.setData(ClipboardData(
                                                    text:
                                                        "https://geumbti.web.app/#/"));
                                              },
                                            )
                                          ],
                                        )
                                      ],
                                    ));
                              },
                              icon: Icon(Icons.ios_share)),
                        ],
                      ),
                      SizedBox(
                          height:
                              context.heightTransformer(dividedBy: 844 / 38)),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: context.heightTransformer(dividedBy: 844 / 84),
                        child: Container(
                          child: Image.asset(
                            "assets/images/squirrel.png",
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            context.widthTransformer(dividedBy: appwidth / 20)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 28,
                        ),
                        Center(
                          child: Text(
                            "안전한게 최고야!",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Center(
                          child: Image.asset(
                            "assets/images/squirrel_logo.png",
                            scale: 4,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            "투자보다는 예금과 적금 위주의\n안정성을 추구하는 사람",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/dotori.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("안정적인 이익을 원해요! 한 방은 절대 No!",
                                style: TextStyle(
                                    fontFamily: "UhBee ZIGLE",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Color(0xff3e3e3e))),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/dotori.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("내 취향은 예금이나 적금!!",
                                style: TextStyle(
                                    fontFamily: "UhBee ZIGLE",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17,
                                    color: Color(0xff3e3e3e))),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/dotori.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("내가 원하는 기업의 사채만 구매해요!",
                                style: TextStyle(
                                    fontFamily: "UhBee ZIGLE",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Color(0xff3e3e3e))),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/dotori.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("존중하며 버티기! 인내심도 많고 참을성도 높아요!",
                                style: TextStyle(
                                    fontFamily: "UhBee ZIGLE",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Color(0xff3e3e3e))),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/dotori.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("주식을 입 안 도토리처럼 오래 넣어두고 오르기를 기다려요!",
                                style: TextStyle(
                                    fontFamily: "UhBee ZIGLE",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Color(0xff3e3e3e))),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
