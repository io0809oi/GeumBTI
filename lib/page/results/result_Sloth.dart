import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:geumbti/widgets/appwidgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:share_plus/share_plus.dart';

class ResultSloth extends StatelessWidget {
  ResultSloth({Key? key, this.name}) : super(key: key);
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
                  color: Color(0xffF9DCD9),
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
                                                    "${name}님의 금융 MBTI 결과는 나무늘보입니다!\n당신도 지금 바로 금융 mbti 테스트를 해보세요!\nhttps://geumbti.web.app/#/",
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
                            "assets/images/sloth.png",
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
                            "이불 밖은 위험해!",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Center(
                          child: Image.asset(
                            "assets/images/sloth_logo.png",
                            scale: 4,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            "투자에 관심은 있으나\n손해가 두려워 소극적인 투자를 하는 사람",
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
                            Text(
                                "의심이 많고, 자신감이 낮은 편이에요.\n그래서 무슨 일을 할땐 엄청난 확신을 필요로 해요!",
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
                            Text(
                                "확신을 얻는 데까지 남들에 비해 오랜 시간이 필요해서\n투자를 할 때 드라마틱한 효과를 얻기 어려워요.",
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
                            Text(
                                "그만큼 현명한 사람이기도 해요.\n급하거나 욱해서 남들의 얘기에 휘말리는 일이 없어요.",
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
                            Text(
                                "내적으로 묵직한 힘을 가지고 있어 차분하게 행동해요!\n그러나 고집이 세고 자기중심적인 경향이 있어요.",
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
                            Text(
                                "투자를 할땐 자신감을 더 키우고, 혼자 결정하기보단\n남들과 같이 소통하면 좋아요!",
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
