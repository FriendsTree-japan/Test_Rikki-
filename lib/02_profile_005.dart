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
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                color: Color(0xD8E4FFFF),
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
                               "わたし・ぼく 名前は"
                                  ,style: TextStyle(color: Colors.black54, fontSize: 14,)
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: TextField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '名前',
                                ),
                              ),
                              width: 40,
                              height: 20,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                  "だよ！"
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
                        Padding(padding: EdgeInsets.all(5.0)),
                        Column(
                          children: <Widget>[
                            Container(
                              child: TextField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'あだ名',
                                ),
                              ),
                              width: 40,
                              height: 20,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                  "って呼んでね！"
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
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'YYYY',
                                ),
                              ),
                              width: 40,
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
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'MM',
                                ),
                              ),
                              width: 20,
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
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'DD',
                                ),
                              ),
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),

                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                  "日生まれの"
                                  ,style: TextStyle(color: Colors.black54, fontSize: 14,)
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: TextField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '○○',
                                ),
                              ),
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),

                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                  "歳です。"
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
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '○○○○○○○○',
                                ),
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
                                  "だと思っってるよ。"
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
                                  "みんなからは、"
                                  ,style: TextStyle(color: Colors.black54, fontSize: 14,)
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: TextField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '○○○○○○○○',
                                ),
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
                                  "って言われてるよ笑。"
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
                                  "チャームポイントは"
                                  ,style: TextStyle(color: Colors.black54, fontSize: 14,)
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: TextField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '○○○○○○○○',
                                ),
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
                                  "で、特技は"
                                  ,style: TextStyle(color: Colors.black54, fontSize: 14,)
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: TextField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '○○○○○○○○',
                                ),
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
                                  "。"
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
                                  "最近のマイブームは"
                                  ,style: TextStyle(color: Colors.black54, fontSize: 14,)
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: TextField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '○○○○○○○○',
                                ),
                              ),
                              width: 80,
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
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '○○○○○○○○',
                                ),
                              ),
                              width: 80,
                              height: 20,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                  "かな！！！！"
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
                      child: TextField(),
                      width: 150,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(5.0)),
                Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                          "１０億円当たったら？"
                          ,style: TextStyle(color: Color(0x860047FA), fontSize: 14,)
                      ),
                    ),
                    Container(
                      child: TextField(),
                      width: 150,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10.0)),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10.0)),
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
                      child: TextField(),
                      width: 150,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(5.0)),
                Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                          "願いが一つ叶うとしたら？"
                          ,style: TextStyle(color: Color(0x860047FA), fontSize: 14,)
                      ),
                    ),
                    Container(
                      child: TextField(),
                      width: 150,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10.0)),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),

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
                          "My Best 3"
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
                      child: TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: '○○○ベスト３',
                        ),
                      ),
                      width: 150,
                      height: 20.0,
                    ),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            child: Text("第１位" ,style: TextStyle(fontSize: 10))
                        ),
                        Padding(padding: EdgeInsets.all(5.0)),
                        Container(
                          child: TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: '入力してください',
                            ),
                          ),
                          width: 120,
                          height: 20.0,
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            child: Text("第２位",style: TextStyle(fontSize: 10))
                        ),
                        Padding(padding: EdgeInsets.all(5.0)),
                        Container(
                          child: TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: '入力してください',
                            ),
                          ),
                          width: 120,
                          height: 20.0,
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            child: Text("第３位",style: TextStyle(fontSize: 10))
                        ),
                        Padding(padding: EdgeInsets.all(5.0)),
                        Container(
                          child: TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: '入力してください',
                            ),
                          ),
                          width: 120,
                          height: 20.0,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(5.0)),
                Column(
                  children: <Widget>[
                    Container(
                      child: TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: '○○○ベスト３',
                        ),
                      ),
                      width: 150,
                      height: 20.0,
                    ),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            child: Text("第１位",style: TextStyle(fontSize: 10))
                        ),
                        Padding(padding: EdgeInsets.all(5.0)),
                        Container(
                          child: TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: '入力してください',
                            ),
                          ),
                          width: 120,
                          height: 20.0,
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            child: Text("第２位",style: TextStyle(fontSize: 10))
                        ),
                        Padding(padding: EdgeInsets.all(5.0)),
                        Container(
                          child: TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: '入力してください',
                            ),
                          ),
                          width: 120,
                          height: 20.0,
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            child: Text("第３位",style: TextStyle(fontSize: 10))
                        ),
                        Padding(padding: EdgeInsets.all(5.0)),
                        Container(
                          child: TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: '入力してください',
                            ),
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




