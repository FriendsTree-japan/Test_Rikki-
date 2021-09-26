import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:profile_box_test/02_profile_002.dart';
import '02_profile_003.dart';
import '02_profile_004.dart';

class Select extends StatefulWidget {
  @override
  _SelectState createState() => _SelectState();
}

class _SelectState extends State<Select> {
  final List<String> imgList = [
    'images/cat.jpeg',
    'images/cat2.jpeg',
    'images/cat3.jpeg',
   ];

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
            children: <Widget>[
              Text('昔ながらの' ,style: TextStyle(color: Colors.lightGreen, fontSize: 25, )),
              Text('のプロフィール帳', style: TextStyle(fontSize: 20)),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: RaisedButton(
                            child: Image.asset('images/cat.jpeg', width: 370,),
                            onPressed: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => profile_003()));
                            }
                            ),
                      ),
                      Text('作成者：YusukeArai' ,style: TextStyle(color: Colors.black12, fontSize: 12, )),
                    ]
                ),
                Column(
                  children: <Widget>[

                    Align(
                      alignment: Alignment.center,
                      child: RaisedButton(
                          child: Image.asset('images/cat2.jpeg', width: 370,),
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => profile_003()));
                          }
                      ),
                    ),
                    Text('作成者：YusukeArai' ,style: TextStyle(color: Colors.black12, fontSize: 12, )),
                  ]
              ),

              Column(
                  children: <Widget>[

                    Align(
                      alignment: Alignment.center,
                      child: RaisedButton(
                          child: Image.asset('images/cat3.jpeg', width: 370,),
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => profile_004()));
                          }
                      ),
                    ),
                    Text('作成者：YusukeArai' ,style: TextStyle(color: Colors.black12, fontSize: 12, )),
                  ]
              ),

            ],
          ),
          ),
          Padding(padding: EdgeInsets.all(10.0)),





          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('ちょっと大人の' ,style: TextStyle(color: Colors.lightGreen, fontSize: 25, )),
              Text('のプロフィール帳', style: TextStyle(fontSize: 20)),
            ],
          ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Column(
                  children: <Widget>[

                    Align(
                      alignment: Alignment.center,
                      child: RaisedButton(
                          child: Image.asset('images/cat.jpeg', width: 370,),
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => profile_003()));
                          }
                      ),
                    ),
                    Text('作成者：YusukeArai' ,style: TextStyle(color: Colors.black12, fontSize: 12, )),
                  ]
              ),

              Column(
                  children: <Widget>[

                    Align(
                      alignment: Alignment.center,
                      child: RaisedButton(
                          child: Image.asset('images/cat2.jpeg', width: 370,),
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => profile_003()));
                          }
                      ),
                    ),
                    Text('作成者：YusukeArai' ,style: TextStyle(color: Colors.black12, fontSize: 12, )),
                  ]
              ),

              Column(
                  children: <Widget>[

                    Align(
                      alignment: Alignment.center,
                      child: RaisedButton(
                          child: Image.asset('images/cat3.jpeg', width: 370,),
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => profile_004()));
                          }
                      ),
                    ),
                    Text('作成者：YusukeArai' ,style: TextStyle(color: Colors.black12, fontSize: 12, )),
                  ]
              ),

            ],
          ),
          ),
          Padding(padding: EdgeInsets.all(25.0)),


          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('推しメン用' ,style: TextStyle(color: Colors.lightGreen, fontSize: 25, )),
              Text('のプロフィール帳', style: TextStyle(fontSize: 20)),
            ],
          ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Column(
                  children: <Widget>[

                    Align(
                      alignment: Alignment.center,
                      child: RaisedButton(
                          child: Image.asset('images/cat.jpeg', width: 370,),
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => profile_003()));
                          }
                      ),
                    ),
                    Text('作成者：YusukeArai' ,style: TextStyle(color: Colors.black12, fontSize: 12, )),
                  ]
              ),

              Column(
                  children: <Widget>[

                    Align(
                      alignment: Alignment.center,
                      child: RaisedButton(
                          child: Image.asset('images/cat2.jpeg', width: 370,),
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => profile_003()));
                          }
                      ),
                    ),
                    Text('作成者：YusukeArai' ,style: TextStyle(color: Colors.black12, fontSize: 12, )),
                  ]
              ),

              Column(
                  children: <Widget>[

                    Align(
                      alignment: Alignment.center,
                      child: RaisedButton(
                          child: Image.asset('images/cat3.jpeg', width: 370,),
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => profile_004()));
                          }
                      ),
                    ),
                    Text('作成者：YusukeArai' ,style: TextStyle(color: Colors.black12, fontSize: 12, )),
                  ]
              ),

            ],
          ),
          ),
          Padding(padding: EdgeInsets.all(10.0)),


        ],
      ),
        ),

    );
  }
}