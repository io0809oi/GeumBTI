import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:geumbti/widgets/appwidgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:share_plus/share_plus.dart';

class ResultPanda extends StatelessWidget {
  ResultPanda({Key? key, this.name}) : super(key: key);
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
                  color: Color(0xffE2F6FF),
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
                                                    "${name}님의 금융 MBTI 결과는 판다입니다!\n당신도 지금 바로 금융 mbti 테스트를 해보세요!\nhttps://geumbti.web.app/#/",
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
                            "assets/images/panda.png",
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
                            "난 하나만 판다...",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Center(
                          child: Image.asset(
                            "assets/images/panda_logo.png",
                            scale: 4,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            "특정 기업이나 분야에 빠져서 \n한 우물만 파는 사람.",
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
                            Text("투자에 있어 본인의 주관과 믿음이 확실한 사람이에요!",
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
                            Text("특정 기업이나 분야에 꽂히면 그것에만 올인하는 경향이 있어요!",
                                style: TextStyle(
                                    fontFamily: "UhBee ZIGLE",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
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
                            Text("자기 생각에 고집이 있어서 남의 말을 잘 듣지 않기도 해요.",
                                style: TextStyle(
                                    fontFamily: "UhBee ZIGLE",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
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
                            Text("선택한 우물이 금우물이라면 가장 큰 이익을 얻을 수 있어요!",
                                style: TextStyle(
                                    fontFamily: "UhBee ZIGLE",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
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
                            Text(
                                "투자 실패의 위험을 줄이기 위해서는 본인의 투자 근거를\n논리적으로 따져볼 필요가 있어요.",
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
