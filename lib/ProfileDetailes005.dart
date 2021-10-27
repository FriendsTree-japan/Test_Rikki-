import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'main.dart';
import '01_Select.dart';


class profile_005 extends StatefulWidget {
  @override
  _profile_005 createState() => _profile_005();
}


class _profile_005 extends State<profile_005> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Column(
                      children: <Widget>[
                        Align(
                          child:Container(
                              child:Text("　My Profile"
                                  ,style: TextStyle(color: Colors.blueAccent, fontSize: 24,))
                          ),
                        ),
                      ]
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                ],
              ),
            ),


            Container(
              padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
              child: Container(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0x72A2BEFF)
                ),

                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                  "わたし・ぼくの名前は"
                                  ,style: TextStyle(color: Colors.black54, fontSize: 14,)
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: TextField(
                                maxLength: 20,
                                decoration: const InputDecoration(counterText: '',),
                                style: TextStyle(fontSize: 14),
                              ),
                              width: 160,
                              height: 20,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                  ""
                                  ,style: TextStyle(color: Colors.black54, fontSize: 14,)
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              child: TextField(
                                maxLength: 22,
                                decoration: const InputDecoration(counterText: '',),
                                style: TextStyle(fontSize: 14),
                              ),
                              width: 200,
                              height: 20,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                  "って呼んでね〜"
                                  ,style: TextStyle(color: Colors.black54, fontSize: 14,)
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                  "誕生日は"
                                  ,style: TextStyle(color: Colors.black54, fontSize: 14,)
                              ),
                            ),
                          ],
                        ),

                        Column(
                          children: <Widget>[
                            Container(
                              child: TextField(
                                maxLength: 4,
                                decoration: const InputDecoration(counterText: '',),
                                style: TextStyle(fontSize: 14),
                              ),
                              width: 60,
                              height: 20,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                  "年"
                                  ,style: TextStyle(color: Colors.black54, fontSize: 14,)
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: TextField(
                                maxLength: 2,
                                decoration: const InputDecoration(counterText: '',),
                                style: TextStyle(fontSize: 14),
                              ),
                              width: 50,
                              height: 20,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                  "月"
                                  ,style: TextStyle(color: Colors.black54, fontSize: 14,)
                              ),
                            ),
                          ],
                        ),

                        Column(
                          children: <Widget>[
                            Container(
                              child: TextField(
                                maxLength: 2,
                                decoration: const InputDecoration(counterText: '',),
                                style: TextStyle(fontSize: 14),
                              ),
                              width: 50,
                              height: 20,
                            ),
                          ],
                        ),

                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                  "日"
                                  ,style: TextStyle(color: Colors.black54, fontSize: 14,)
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                  "性格は"
                                  ,style: TextStyle(color: Colors.black54, fontSize: 14,)
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: TextField(
                                maxLength: 22,
                                decoration: const InputDecoration(counterText: '',),
                                style: TextStyle(fontSize: 14),
                              ),
                              width: 180,
                              height: 20,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                  "だと思ってるよ"
                                  ,style: TextStyle(color: Colors.black54, fontSize: 14,)
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                  "そんなわたし・ぼくだけど、これからもよろしくね"
                                  ,style: TextStyle(color: Colors.black54, fontSize: 14,)
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                  "特技・趣味は"
                                  ,style: TextStyle(color: Colors.black54, fontSize: 14,)
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: TextField(
                                maxLength: 30,
                                decoration: const InputDecoration(counterText: '',),
                                style: TextStyle(fontSize: 14),
                              ),
                              width: 240,
                              height: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                  "マイブームは"
                                  ,style: TextStyle(color: Colors.black54, fontSize: 14,)
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: TextField(
                                maxLength: 28,
                                decoration: const InputDecoration(counterText: '',),
                                style: TextStyle(fontSize: 14),
                              ),
                              width: 215,
                              height: 20,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                  "で、"
                                  ,style: TextStyle(color: Colors.black54, fontSize: 14,)
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                  "最近やってみたいことは"
                                  ,style: TextStyle(color: Colors.black54, fontSize: 14,)
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: TextField(
                                maxLength: 14,
                                decoration: const InputDecoration(counterText: '',),
                                style: TextStyle(fontSize: 14),
                              ),
                              width: 120,
                              height: 20,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                  "かな〜"
                                  ,style: TextStyle(color: Colors.black54, fontSize: 14,)
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                          "休みの日は何してる？"
                          ,style: TextStyle(color: Color(0x860047FA), fontSize: 14,)
                      ),
                    ),
                    Container(
                      child: TextField(
                        maxLength: 16,
                        decoration: const InputDecoration(counterText: '',),
                        style: TextStyle(fontSize: 14),
                      ),
                      width: 150,
                      height: 20,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                          "１０億円当たったら？"
                          ,style: TextStyle(color: Color(0x860047FA), fontSize: 14,)
                      ),
                    ),
                    Container(
                      child: TextField(
                        maxLength: 16,
                        decoration: const InputDecoration(counterText: '',),
                        style: TextStyle(fontSize: 14),
                      ),
                      width: 150,
                      height: 20,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10.0)),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 15.0)),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                          "生まれ変わるなら？"
                          ,style: TextStyle(color: Color(0x860047FA), fontSize: 14,)
                      ),
                    ),
                    Container(
                      child: TextField(
                        maxLength: 16,
                        decoration: const InputDecoration(counterText: '',),
                        style: TextStyle(fontSize: 14),
                      ),
                      width: 150,
                      height: 20,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                          "願いが一つ叶ったら？"
                          ,style: TextStyle(color: Color(0x860047FA), fontSize: 14,)
                      ),
                    ),
                    Container(
                      child: TextField(
                        maxLength: 16,
                        decoration: const InputDecoration(counterText: '',),
                        style: TextStyle(fontSize: 14),
                      ),
                      width: 150,
                      height: 20,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10.0)),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),

            Container(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              child: Container(
                padding: EdgeInsets.fromLTRB(12.0, 10.0, 5.0, 25.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0x86F2B8FF)),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                  "My Best 3"
                                  ,style: TextStyle(color: Color(0x86D400FA), fontSize: 18,)
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              child: TextField(
                                textAlign: TextAlign.center,
                                maxLength: 18,
                                decoration: const InputDecoration(counterText: '',),
                                style: TextStyle(fontSize: 14),
                              ),
                              width: 160,
                              height: 20,
                            ),
                            Padding(padding: EdgeInsets.all(5.0)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    child: Text("第１位" ,style: TextStyle(fontSize: 10))
                                ),
                                Padding(padding: EdgeInsets.all(5.0)),
                                Container(
                                  child: TextField(
                                    maxLength: 16,
                                    decoration: const InputDecoration(counterText: '',),
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  width: 120,
                                  height: 20.0,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    child: Text("第２位",style: TextStyle(fontSize: 10))
                                ),
                                Padding(padding: EdgeInsets.all(5.0)),
                                Container(
                                  child: TextField(
                                    maxLength: 16,
                                    decoration: const InputDecoration(counterText: '',),
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  width: 120,
                                  height: 20.0,
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    child: Text("第３位",style: TextStyle(fontSize: 10))
                                ),
                                Padding(padding: EdgeInsets.all(5.0)),
                                Container(
                                  child: TextField(
                                    maxLength: 16,
                                    decoration: const InputDecoration(counterText: '',),
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  width: 120,
                                  height: 20.0,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(7.0)),
                        Column(
                          children: <Widget>[
                            Container(
                              child: TextField(
                                textAlign: TextAlign.center,
                                maxLength: 18,
                                decoration: const InputDecoration(counterText: '',),
                                style: TextStyle(fontSize: 14),
                              ),
                              width: 160,
                              height: 20,
                            ),
                            Padding(padding: EdgeInsets.all(5.0)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    child: Text("第１位",style: TextStyle(fontSize: 10))
                                ),
                                Padding(padding: EdgeInsets.all(5.0)),
                                Container(
                                  child: TextField(
                                    maxLength: 16,
                                    decoration: const InputDecoration(counterText: '',),
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  width: 120,
                                  height: 20.0,
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    child: Text("第２位",style: TextStyle(fontSize: 10))
                                ),
                                Padding(padding: EdgeInsets.all(5.0)),
                                Container(
                                  child: TextField(
                                    maxLength: 16,
                                    decoration: const InputDecoration(counterText: '',),
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  width: 120,
                                  height: 20.0,
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    child: Text("第３位",style: TextStyle(fontSize: 10))
                                ),
                                Padding(padding: EdgeInsets.all(5.0)),
                                Container(
                                  child: TextField(
                                    maxLength: 16,
                                    decoration: const InputDecoration(counterText: '',),
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  width: 120,
                                  height: 20.0,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(10.0)),
                      ],
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}



