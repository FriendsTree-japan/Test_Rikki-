import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'main.dart';
import '01_Select.dart';

class profile_006 extends StatefulWidget {
  @override
  _profile_006 createState() => _profile_006();
}

class _profile_006 extends State<profile_006> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Profile Book App",
            style: TextStyle(
              color: Color(0x86D400FA),
              fontSize: 18,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Column(children: <Widget>[
                    Container(
                        padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 15.0),
                        child: Text("My Profile",
                            style: TextStyle(
                              color: Color(0x86D400FA),
                              fontSize: 24,
                            ))),
                  ]),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0x86D400FA)),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 20.0),
                child: Column(
                  children: <Widget>[
                    Container(height: 10),
                    Row(
                      children: <Widget>[
                        Container(
                          child: Text("名前",
                              style: TextStyle(
                                color: Color(0x86D400FA),
                                fontSize: 20,
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 0.0),
                          child: TextField(),
                          width: 200,
                          height: 30.0,
                        ),
                      ],
                    ),
                    Divider(
                      height: 30,
                      thickness: 1,
                      color: Color(0x86D400FA),
                    ),
                    Column(children: <Widget>[
                      //１行目
                      Row(
                        children: <Widget>[
                          Container(
                              child:
                                  Text("誕生日は", style: TextStyle(fontSize: 18))),
                          Container(
                            padding: EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 0.0),
                            child: TextField(),
                            width: 50,
                            height: 30.0,
                          ),
                          Container(
                              child: Text("年", style: TextStyle(fontSize: 18))),
                          Container(
                            padding: EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 0.0),
                            child: TextField(),
                            width: 30,
                            height: 30.0,
                          ),
                          Container(
                              child: Text("月", style: TextStyle(fontSize: 18))),
                          Container(
                            padding: EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 0.0),
                            child: TextField(),
                            width: 30,
                            height: 30.0,
                          ),
                          Container(
                              child: Text("日で、今は",
                                  style: TextStyle(fontSize: 18))),
                        ],
                      ),
                      Container(height: 8),
                      //2行目
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 0.0),
                            child: TextField(),
                            width: 160,
                            height: 30.0,
                          ),
                          Container(
                              padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                              child: Text("に住んでるの。",
                                  style: TextStyle(fontSize: 18))),
                        ],
                      ),
                      Container(height: 8),
                      //3行目
                      Row(
                        children: <Widget>[
                          Container(
                              child: Text("みんなからは",
                                  style: TextStyle(fontSize: 18))),
                          Container(
                            padding: EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 0.0),
                            child: TextField(),
                            width: 180,
                            height: 30.0,
                          ),
                        ],
                      ),
                      Container(height: 8),
                      //4行目
                      Row(
                        children: <Widget>[
                          Container(
                              child: Text("って呼ばれているよ。",
                                  style: TextStyle(fontSize: 18))),
                        ],
                      ),
                      Container(height: 8),
                      //5行目
                      Row(
                        children: <Widget>[
                          Container(
                              child:
                                  Text("趣味は", style: TextStyle(fontSize: 18))),
                          Container(
                            padding: EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 0.0),
                            child: TextField(),
                            width: 180,
                            height: 30.0,
                          ),
                          Container(
                              child:
                                  Text("で、", style: TextStyle(fontSize: 18))),
                        ],
                      ),
                      Container(height: 8),
                      //6行目
                      Row(
                        children: <Widget>[
                          Container(
                              child:
                                  Text("特技は", style: TextStyle(fontSize: 18))),
                          Container(
                            padding: EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 0.0),
                            child: TextField(),
                            width: 180,
                            height: 30.0,
                          ),
                          Container(
                              child: Text("なんだ〜。",
                                  style: TextStyle(fontSize: 18))),
                        ],
                      ),
                      Container(height: 8),
                      Row(
                        children: <Widget>[
                          Container(
                              child: Text("マイブームは",
                                  style: TextStyle(fontSize: 18))),
                          Container(
                            padding: EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 0.0),
                            child: TextField(),
                            width: 180,
                            height: 30.0,
                          ),
                          Container(
                              child:
                                  Text("で、", style: TextStyle(fontSize: 18))),
                        ],
                      ),
                      Container(height: 8),
                      Row(
                        children: <Widget>[
                          Container(
                              child: Text("お休みの日は",
                                  style: TextStyle(fontSize: 18))),
                          Container(
                            padding: EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 0.0),
                            child: TextField(),
                            width: 180,
                            height: 30.0,
                          ),
                          Container(
                              child:
                                  Text("をして", style: TextStyle(fontSize: 18))),
                        ],
                      ),
                      Container(height: 8),
                      Row(
                        children: <Widget>[
                          Container(
                              child: Text("過ごしているよー。",
                                  style: TextStyle(fontSize: 18))),
                        ],
                      ),
                    ]),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 5.0),
                  child: Container(
                    width: 250,
                    height:250,
                    decoration: BoxDecoration(
                      color: Color(0x83C6C2FF),
                      // border-radius: 10px 10px 0 0,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        bottomLeft:Radius.circular(15.0),
                        bottomRight:Radius.circular(15.0),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  padding:
                                      EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                                  child: Text("Favorite",
                                      style: TextStyle(
                                        color: Color(0xC8412FFD),
                                        fontSize: 18,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Table(
                          children: [
                            TableRow(children: [
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Align(
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Text("食べ物"),
                                  ),
                                ),
                              ),
                              Container(
                                padding:
                                    EdgeInsets.fromLTRB(0.0, 10.0, 25.0, 10.0),
                                child: TextField(),
                                width: 30,
                                height: 30,
                              )
                            ]),
                            TableRow(children: [
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Align(
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Text("映画"),
                                  ),
                                ),
                              ),
                              Container(
                                padding:
                                    EdgeInsets.fromLTRB(0.0, 10.0, 25.0, 10.0),
                                child: TextField(),
                                width: 30,
                                height: 30,
                              )
                            ]),
                            TableRow(children: [
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Align(
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Text("アニメ"),
                                  ),
                                ),
                              ),
                              Container(
                                padding:
                                    EdgeInsets.fromLTRB(0.0, 10.0, 25.0, 10.0),
                                child: TextField(),
                                width: 30,
                                height: 30,
                              )
                            ]),
                            TableRow(children: [
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Align(
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Text("TV番組"),
                                  ),
                                ),
                              ),
                              Container(
                                padding:
                                    EdgeInsets.fromLTRB(0.0, 10.0, 25.0, 10.0),
                                child: TextField(),
                                width: 30,
                                height: 30,
                              )
                            ]),
                            TableRow(children: [
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Align(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text("YouTube"),
                                      ),
                                      Container(
                                        child: Text("チャンネル"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                padding:
                                    EdgeInsets.fromLTRB(0.0, 10.0, 25.0, 0.0),
                                child: TextField(),
                                width: 30,
                                height: 30,
                              )
                            ]),
                            TableRow(children: [
                              TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                child: Align(
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Text("場所"),
                                  ),
                                ),
                              ),
                              Container(
                                padding:
                                    EdgeInsets.fromLTRB(0.0, 10.0, 25.0, 10.0),
                                child: TextField(),
                                width: 30,
                                height: 30,
                              )
                            ]),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  children:[
                    Container(
                      padding: EdgeInsets.fromLTRB(0.0, 20.0, 10.0, 5.0),
                      color: Colors.amber,
                      width: 100,
                      height:100,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 5.0),
                      color: Colors.amber,
                      width: 100,
                      height:100,
                    ),
                  ]
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 5.0)),
          ],
        ),
      ),
    );
  }
}
