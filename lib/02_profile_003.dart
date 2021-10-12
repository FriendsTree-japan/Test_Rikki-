import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'main.dart';
import '01_Select.dart';
import 'profileDb.dart';
import 'model/F01_CreateImage.dart';

class profile_003 extends StatefulWidget {
  @override
  _profile_003 createState() => _profile_003();
}

class _profile_003 extends State<profile_003> {
  //プロフィール帳①質問回答項目
  var nameController = TextEditingController();
  var birthController = TextEditingController();
  var placeController = TextEditingController();
  var bloodTypeController = TextEditingController();
  var favoriteThingController = TextEditingController();
  var freeController = TextEditingController();

  //スライダー値更新
  var _sliderValue1 = 0.0;
  var _sliderValue2 = 0.0;
  var _sliderValue3 = 0.0;
  var _sliderValue4 = 0.0;
  var _sliderValue5 = 0.0;
  var _labelText = 'Select value';

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
        key: convertWidgetToImageKey,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text("Profile Book App",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                )),
          ),
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
                      Column(children: <Widget>[
                        Align(
                          child: Container(
                            child: Image.asset('images/cat.jpeg', width: 150),
                            padding: EdgeInsets.fromLTRB(5.0, 5.0, 10.0, 5.0),
                          ),
                        ),
                      ]),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 200,
                            child: TextField(
                              controller: nameController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: '名前（あだ名）',
                                filled: true,
                                fillColor: Color(0xFFEEA1FF),
                              ),
                            ),
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
                          width: 100,
                          child: TextField(
                            controller: birthController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: '生年月日',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 100,
                          child: TextField(
                            controller: placeController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: '出身地',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 100,
                          child: TextField(
                            controller: bloodTypeController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: '血液型',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                Container(
                  child: TextField(
                    controller: favoriteThingController,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text('あなたはどっち派?',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text('「犬」派?、「猫」派?',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 10,
                              )),
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
                          child: Text('「思いやり」派?、「論理に忠実」派?',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 10,
                              )),
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
                          child: Text('業務は、「スピードが大事」派?、「品質が大事」派?',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 10,
                              )),
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
                          child: Text('「色んなことに挑戦」派?、「一つのことを追求」派?',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 10,
                              )),
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
                          child: Text('大切にしたいのは、「仕事」派?、「家庭」派?',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 10,
                              )),
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
                    controller: freeController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'フリースペース',
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                      child: Text('保存'),
                      onPressed: () async {
                        saveImage _saveImage = saveImage();
                        _saveImage.saveLocalImage(convertWidgetToImageKey);

                        profileDb proDb = new profileDb();
                        String name = nameController.text;
                        String birth = birthController.text;
                        String place = placeController.text;
                        String bloodType = bloodTypeController.text;
                        String favoriteThing = favoriteThingController.text;
                        String free = freeController.text;

                        String query =
                            'INSERT INTO profile1(name, birth, place, bloodType, favoriteThing, free, sliderValue1, sliderValue2, sliderValue3, sliderValue4, sliderValue5) '
                            'VALUES("$name", "$birth", "$place", "$bloodType", "$favoriteThing", "$free", $_sliderValue1, $_sliderValue2, $_sliderValue3, $_sliderValue4, $_sliderValue5)';

                        await proDb.saveData(
                            name,
                            birth,
                            place,
                            bloodType,
                            favoriteThing,
                            free,
                            _sliderValue1,
                            _sliderValue2,
                            _sliderValue3,
                            _sliderValue4,
                            _sliderValue5,
                            query);

                        showDialog(BuildContext context) => AlertDialog(
                              title: Text("saved"),
                              content: Text("insert data into database."),
                            );
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                      }),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                      child: Text('戻る'),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
