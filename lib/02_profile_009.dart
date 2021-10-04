import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'main.dart';
import '01_Select.dart';


class profile_009 extends StatefulWidget {
  @override
  _profile_009 createState() => _profile_009();
}


class _profile_009 extends State<profile_009> {
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
                    child: Text("好き or 嫌い" ,style: TextStyle(fontSize: 20))
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
                    color: Color(0x83F2AFFF),
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
                                      "好き💜"
                                      ,style: TextStyle(color: Color(0xC8F949FF), fontSize: 18,)
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
                                    child: Text("教科" ,style: TextStyle(fontSize: 10))
                                ),
                                Container(
                                  child: TextField(),
                                  width: 150,
                                  height: 20.0,
                                ),
                                Padding(padding: EdgeInsets.all(10.0)),

                                Container(
                                    child: Text("給食" ,style: TextStyle(fontSize: 10))
                                ),
                                Container(
                                  child: TextField(),
                                  width: 150,
                                  height: 20.0,
                                ),
                                Padding(padding: EdgeInsets.all(10.0)),

                                Container(
                                    child: Text("イベント" ,style: TextStyle(fontSize: 10))
                                ),
                                Container(
                                  child: TextField(),
                                  width: 150,
                                  height: 20.0,
                                ),

                                Container(
                                    child: Text("こと" ,style: TextStyle(fontSize: 10))
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
                    color: Color(0xE6B9C5FF),
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
                                      "嫌い⚡️"
                                      ,style: TextStyle(color: Color(0xE63B7DEE), fontSize: 18,)
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
                                    child: Text("" ,style: TextStyle(fontSize: 10))
                                ),
                                Container(
                                  child: TextField(),
                                  width: 150,
                                  height: 20.0,
                                ),
                                Padding(padding: EdgeInsets.all(10.0)),

                                Container(
                                    child: Text("給食" ,style: TextStyle(fontSize: 10))
                                ),
                                Container(
                                  child: TextField(),
                                  width: 150,
                                  height: 20.0,
                                ),
                                Padding(padding: EdgeInsets.all(10.0)),

                                Container(
                                    child: Text("イベント" ,style: TextStyle(fontSize: 10))
                                ),
                                Container(
                                  child: TextField(),
                                  width: 150,
                                  height: 20.0,
                                ),

                                Container(
                                    child: Text("こと" ,style: TextStyle(fontSize: 10))
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
                    color: Color(0x86CDC9CD),
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
                                    child: Text("もう一度食べたい給食" ,style: TextStyle(fontSize: 10))
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
                    color: Color(0x86CDC9CD),
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
                                    child: Text("もう一度会いたい友達" ,style: TextStyle(fontSize: 10))
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
                    color: Color(0x86CDC9CD),
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
                                    child: Text("できれば会いたい先生" ,style: TextStyle(fontSize: 10))
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
                    color: Color(0x86CDC9CD),
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
                                    child: Text("好きだった先生" ,style: TextStyle(fontSize: 10))
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




