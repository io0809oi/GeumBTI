import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:geumbti/widgets/appwidgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:share_plus/share_plus.dart';

class ResultTibetFox extends StatelessWidget {
  ResultTibetFox({Key? key, this.name}) : super(key: key);

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
                  color: Color(0xffEFEFEF),
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
                                                    "${name}님의 금융 MBTI 결과는 티벳여우입니다!\n당신도 지금 바로 금융 mbti 테스트를 해보세요!\nhttps://geumbti.web.app/#/",
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
                            "assets/images/tibetfox.png",
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
                            "아무것도 관심없어..",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Center(
                          child: Image.asset(
                            "assets/images/tibetfox_logo.png",
                            scale: 4,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            "투자와 같은 경제 활동 자체에 관심이 없어\n아무 활동도 하지 않는 사람.",
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
                            Text("아직까지는 투자같은 활동에 관심이 없는 사람이에요!",
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
                            Text("투자보다는 다른 활동에 더 관심이 많으신것 같아요.",
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
                            Text("한번 쯤은 제테크나 투자에 관심을 가져보는게 어떨까요?",
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
                            Text("만약 오늘 처음 알았다면 모의투자라도 좋으니 시작하는게\n어떨까요?",
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
                            Text("돈을 벌 수 있는 수단도 여러가지이죠 꼭 투자가 아니더라도\n괜찮지 않나요?",
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
