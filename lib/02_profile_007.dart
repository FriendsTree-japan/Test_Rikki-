import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'main.dart';
import '01_Select.dart';


class profile_007 extends StatefulWidget {
  @override
  _profile_007 createState() => _profile_007();
}


class _profile_007 extends State<profile_007> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    child: Text("好きだったひと💜" ,style: TextStyle(fontSize: 24))
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
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
                                    child: Text("幼稚園のとき" ,style: TextStyle(fontSize: 10))
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
                                    child: Text("小学校のとき" ,style: TextStyle(fontSize: 10))
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 20.0),
                    color: Color(0x8693EA90),
                    child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
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
                                    child: Text("中学校のとき" ,style: TextStyle(fontSize: 10))
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
                                    child: Text("小学校のとき" ,style: TextStyle(fontSize: 10))
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
                color: Color(0x86E2DDDD),
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
                                  "○○にするなら誰"
                                  ,style: TextStyle(color: Color(0x86181717), fontSize: 18,)
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
                                child: Text("兄弟にするなら" ,style: TextStyle(fontSize: 10))
                            ),
                            Container(
                              child: TextField(),
                              width: 150,
                              height: 20.0,
                            ),
                            Padding(padding: EdgeInsets.all(10.0)),

                            Container(
                                child: Text("恋人にするなら" ,style: TextStyle(fontSize: 10))
                            ),
                            Container(
                              child: TextField(),
                              width: 150,
                              height: 20.0,
                            ),
                            Padding(padding: EdgeInsets.all(10.0)),

                            Container(
                                child: Text("結婚するなら" ,style: TextStyle(fontSize: 10))
                            ),
                            Container(
                              child: TextField(),
                              width: 150,
                              height: 20.0,
                            ),
                            Padding(padding: EdgeInsets.all(10.0)),

                            Container(
                                child: Text("もしいま会えるとしたら" ,style: TextStyle(fontSize: 10))
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
              padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
              child: Container(
                padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 20.0),
                color: Color(0x86FFD9B8),
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
                                  ,style: TextStyle(color: Color(0xE8FF831F), fontSize: 18,)
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




