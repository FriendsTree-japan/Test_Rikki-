import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'main.dart';
import '01_Select.dart';


class profile_011 extends StatefulWidget {
  @override
  _profile_011 createState() => _profile_011();
}


class _profile_011 extends State<profile_011> {
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
                              child:Text("　　My Profile"
                                  ,style: TextStyle(color: Colors.blueAccent, fontSize: 24,))
                          ),
                        ),
                      ]
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: TextField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '年',
                          ),
                        ),
                        width: 80,
                        height: 20,
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(5.0)),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: TextField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '月',
                          ),
                        ),
                        width: 40,
                        height: 20,
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(5.0)),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: TextField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '日',
                          ),
                        ),
                        width: 40,
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
              child: Container(
                padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 20.0),
                color: Color(0x86F2B8FF),
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
                                  "○○だった人"
                                  ,style: TextStyle(color: Color(0x86D400FA), fontSize: 18,)
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 5.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                                child: Text("可愛かった" ,style: TextStyle(fontSize: 10))
                            ),
                            Container(
                              child: TextField(),
                              width: 150,
                              height: 20.0,
                            ),
                            Padding(padding: EdgeInsets.all(10.0)),

                            Container(
                                child: Text("かっこよかった" ,style: TextStyle(fontSize: 10))
                            ),
                            Container(
                              child: TextField(),
                              width: 150,
                              height: 20.0,
                            ),
                            Padding(padding: EdgeInsets.all(10.0)),

                            Container(
                                child: Text("面白かった" ,style: TextStyle(fontSize: 10))
                            ),
                            Container(
                              child: TextField(),
                              width: 150,
                              height: 20.0,
                            ),
                            Padding(padding: EdgeInsets.all(10.0)),

                            Container(
                                child: Text("優しかった" ,style: TextStyle(fontSize: 10))
                            ),
                            Container(
                              child: TextField(),
                              width: 150,
                              height: 20.0,
                            ),
                            Padding(padding: EdgeInsets.all(10.0)),
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(5.0)),

                        Column(
                          children: <Widget>[
                            Container(
                                child: Text("お金もちになってそう" ,style: TextStyle(fontSize: 10))
                            ),
                            Container(
                              child: TextField(),
                              width: 150,
                              height: 20.0,
                            ),
                            Padding(padding: EdgeInsets.all(10.0)),

                            Container(
                                child: Text("酒豪になってそう" ,style: TextStyle(fontSize: 10))
                            ),
                            Container(
                              child: TextField(),
                              width: 150,
                              height: 20.0,
                            ),
                            Padding(padding: EdgeInsets.all(10.0)),

                            Container(
                                child: Text("いいパパ・ママになってそう" ,style: TextStyle(fontSize: 10))
                            ),
                            Container(
                              child: TextField(),
                              width: 150,
                              height: 20.0,
                            ),
                            Padding(padding: EdgeInsets.all(10.0)),

                            Container(
                                child: Text("宇宙と交信してそう" ,style: TextStyle(fontSize: 10))
                            ),
                            Container(
                              child: TextField(),
                              width: 150,
                              height: 20.0,
                            ),
                            Padding(padding: EdgeInsets.all(10.0)),
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(10.0)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 20.0),
                    color: Color(0x837B71FF),
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
                                      "○○と言えば"
                                      ,style: TextStyle(color: Color(0xC8412FFD), fontSize: 18,)
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 5.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                    child: Text("おつまみと言えば" ,style: TextStyle(fontSize: 10))
                                ),
                                Container(
                                  child: TextField(),
                                  width: 150,
                                  height: 20.0,
                                ),
                                Padding(padding: EdgeInsets.all(10.0)),

                                Container(
                                    child: Text("お酒と言えば" ,style: TextStyle(fontSize: 10))
                                ),
                                Container(
                                  child: TextField(),
                                  width: 150,
                                  height: 20.0,
                                ),
                                Padding(padding: EdgeInsets.all(10.0)),

                                Container(
                                    child: Text("韓ドラマと言えば" ,style: TextStyle(fontSize: 10))
                                ),
                                Container(
                                  child: TextField(),
                                  width: 150,
                                  height: 20.0,
                                ),
                                Padding(padding: EdgeInsets.all(10.0)),
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(5.0)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 20.0),
                    color: Color(0x86FFF48C),
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
                                      "No My Thing"
                                      ,style: TextStyle(color: Color(0xE6FFF363), fontSize: 18,)
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 5.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                    child: Text("芸能人になって" ,style: TextStyle(fontSize: 10))
                                ),
                                Container(
                                  child: TextField(),
                                  width: 150,
                                  height: 20.0,
                                ),
                                Padding(padding: EdgeInsets.all(10.0)),

                                Container(
                                    child: Text("スポーツ選手になってそう" ,style: TextStyle(fontSize: 10))
                                ),
                                Container(
                                  child: TextField(),
                                  width: 150,
                                  height: 20.0,
                                ),
                                Padding(padding: EdgeInsets.all(10.0)),

                                Container(
                                    child: Text("まだオタクやってそう" ,style: TextStyle(fontSize: 10))
                                ),
                                Container(
                                  child: TextField(),
                                  width: 150,
                                  height: 20.0,
                                ),
                                Padding(padding: EdgeInsets.all(10.0)),
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(5.0)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 5.0)),

            Container(
              padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
              child: Container(
                padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 20.0),
                color: Color(0x86B8FFBF),
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
                                  "FreeSpace"
                                  ,style: TextStyle(color: Color(0xE838BB48), fontSize: 18,)
                              ),
                            ),

                            Container(
                              child: TextField(),
                              width: 300,
                              height: 60.0,
                            ),

                          ],
                        ),
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




