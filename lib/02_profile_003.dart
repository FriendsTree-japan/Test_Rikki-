import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'main.dart';
import '01_Select.dart';


class profile_003 extends StatefulWidget {
  @override
  _profile_003 createState() => _profile_003();
}


class _profile_003 extends State<profile_003> {
  var _sliderValue1 = 0.0;
  var _sliderValue2 = 0.0;
  var _sliderValue3 = 0.0;
  var _sliderValue4 = 0.0;
  var _sliderValue5 = 0.0;
  var _labelText = 'Select value';
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
                            child:Image.asset(
                                'images/cat.jpeg', width: 150
                            ),
                            padding: EdgeInsets.fromLTRB(5.0, 5.0, 10.0, 5.0),
                          ),
                        ),
                      ]
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: TextField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '名前（あだ名）',
                            filled: true,
                            fillColor: Color(0xFFEEA1FF),
                          ),
                        ),
                        width: 200,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      child: TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: '生年月日',
                        ),
                      ),
                      width: 100,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                Column(
                  children: <Widget>[
                    Container(
                      child: TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: '出身地',
                        ),
                      ),
                      width: 100,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                Column(
                  children: <Widget>[
                    Container(
                      child: TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: '血液型',
                        ),
                      ),
                      width: 100,
                    ),
                  ],
                ),
              ],
            ),

            Padding(padding: EdgeInsets.only(top: 10.0)),

            Container(
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '好きなもの・こと',
                ),
              ),
              padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
              child: Container(
                color: Color(0xFFF3D9F8),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text('あなたはどっち派?' ,style: TextStyle(color: Colors.black54, fontSize: 16, fontWeight: FontWeight.bold)),
                    ),

                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text('「犬」派?、「猫」派?' ,style: TextStyle(color: Colors.black54, fontSize: 10,)),
                    ),

                    Slider(
                      value: _sliderValue1,
                      min: 0,
                      max: 100,
                      divisions: 5,
                      onChanged: (double value) {
                        setState(() {
                          _sliderValue1 = value.roundToDouble();
                          _labelText = 'value = $_sliderValue1';
                        });
                      },
                    ),

                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('「思いやり」派?、「論理に忠実」派?',style: TextStyle(color: Colors.black54, fontSize: 10,)),
                    ),

                    Slider(
                      value: _sliderValue2,
                      min: 0,
                      max: 100,
                      divisions: 5,
                      onChanged: (double value) {
                        setState(() {
                          _sliderValue2 = value.roundToDouble();
                          _labelText = 'value = $_sliderValue2';
                        });
                      },
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('業務は、「スピードが大事」派?、「品質が大事」派?',style: TextStyle(color: Colors.black54, fontSize: 10,)),
                    ),

                    Slider(
                      value: _sliderValue3,
                      min: 0,
                      max: 100,
                      divisions: 5,
                      onChanged: (double value) {
                        setState(() {
                          _sliderValue3 = value.roundToDouble();
                          _labelText = 'value = $_sliderValue3';
                        });
                      },
                    ),

                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('「色んなことに挑戦」派?、「一つのことを追求」派?',style: TextStyle(color: Colors.black54, fontSize: 10,)),
                    ),

                    Slider(
                      value: _sliderValue4,
                      min: 0,
                      max: 100,
                      divisions: 5,
                      onChanged: (double value) {
                        setState(() {
                          _sliderValue4 = value.roundToDouble();
                          _labelText = 'value = $_sliderValue4';
                        });
                      },
                    ),

                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('大切にしたいのは、「仕事」派?、「家庭」派?',style: TextStyle(color: Colors.black54, fontSize: 10,)),
                    ),

                    Slider(
                      value: _sliderValue5,
                      min: 0,
                      max: 100,
                      divisions: 5,
                      onChanged: (double value) {
                        setState(() {
                          _sliderValue5 = value.roundToDouble();
                          _labelText = 'value = $_sliderValue5';
                        });
                      },
                    ),

                  ],

                ),
              ),
            ),
            Container(
              child: TextField(
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
