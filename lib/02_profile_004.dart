import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'main.dart';
import '01_Select.dart';


class profile_004 extends StatefulWidget {
  @override
  _profile_004 createState() => _profile_004();
}


class _profile_004 extends State<profile_004> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            Text('Profile_book' ,style: TextStyle(color: Colors.black, fontSize: 18, )),
            Padding(padding: EdgeInsets.all(10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      child: TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: '例）好きなことベスト３',
                        ),
                      ),
                      width: 190,
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
                          width: 140,
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
                          width: 140,
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
                          width: 140,
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
                          labelText: '例）好きなことベスト３',
                        ),
                      ),
                      width: 190,
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
                          width: 140,
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
                          width: 140,
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
                          width: 140,
                          height: 20.0,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10.0)),
              ],
            ),
            Padding(padding: EdgeInsets.all(15.0)),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      child: TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: '例）好きなことベスト３',
                        ),
                      ),
                      width: 190,
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
                          width: 140,
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
                          width: 140,
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
                          width: 140,
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
                          labelText: '例）好きなことベスト３',
                        ),
                      ),
                      width: 190,
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
                          width: 140,
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
                          width: 140,
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
                          width: 140,
                          height: 20.0,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10.0)),
              ],
            ),
            Padding(padding: EdgeInsets.all(15.0)),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      child: TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: '例）好きなことベスト３',
                        ),
                      ),
                      width: 190,
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
                          width: 140,
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
                          width: 140,
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
                          width: 140,
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
                          labelText: '例）好きなことベスト３',
                        ),
                      ),
                      width: 190,
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
                          width: 140,
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
                          width: 140,
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
                          width: 140,
                          height: 20.0,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10.0)),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 15.0)),


            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                    child: Text("Q1",style: TextStyle(fontSize: 10))
                ),
                Padding(padding: EdgeInsets.all(5.0)),
                Container(
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '例）好きな人はいる？',
                    ),
                  ),
                  width: 200,
                  height: 20.0,
                ),

              ],
            ),



            Container(
              child: TextField(
                maxLines: 4,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'フリースペース',
                ),
              ),
              padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
            ),
          ],

        ),
      ),
    );
  }
}



