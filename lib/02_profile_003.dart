import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'main.dart';
import '01_Select.dart';
import 'profileDb.dart';
import 'CreateImage.dart';
import '01_Edit.dart';
import 'profileShow.dart';
import 'package:intl/intl.dart';
import 'selectImage.dart';
import 'base64_helper.dart';

class profile_003 extends StatefulWidget {
  late final int id;
  late final String saveName;
  late final String koshinYmd;
  late final String name;
  late final String birth;
  late final String place;
  late final String bloodType;
  late final String favoriteThing;
  late final String free;
  late final double _sliderValue1;
  late final String slider1Koumoku1;
  late final String slider1Koumoku2;
  late final double _sliderValue2;
  late final String slider2Koumoku1;
  late final String slider2Koumoku2;
  late final double _sliderValue3;
  late final String slider3Koumoku1;
  late final String slider3Koumoku2;
  late final String myImagePath;

  late final String koshinFlg;

  profile_003.Details(
      this.id,
      this.saveName,
      this.koshinYmd,
      this.name,
      this.birth,
      this.place,
      this.bloodType,
      this.favoriteThing,
      this.free,
      this._sliderValue1,
      this.slider1Koumoku1,
      this.slider1Koumoku2,
      this._sliderValue2,
      this.slider2Koumoku1,
      this.slider2Koumoku2,
      this._sliderValue3,
      this.slider3Koumoku1,
      this.slider3Koumoku2,
      this.myImagePath,
      this.koshinFlg);

  profile_003.make() {
    this.id = 0;
    this.saveName = "";
    this.koshinYmd = "";
    this.name = "";
    this.birth = "";
    this.place = "";
    this.bloodType = "";
    this.favoriteThing = "";
    this.free = "";
    this._sliderValue1 = 0.0;
    this.slider1Koumoku1 = "";
    this.slider1Koumoku2 = "";
    this._sliderValue2 = 0.0;
    this.slider2Koumoku1 = "";
    this.slider2Koumoku2 = "";
    this._sliderValue3 = 0.0;
    this.slider3Koumoku1 = "";
    this.slider3Koumoku2 = "";
    this.myImagePath = "";
    this.koshinFlg = "0";
  }

  @override
  _profile_003 createState() => _profile_003();
}

class _profile_003 extends State<profile_003> {
  //プロフィール帳3質問回答項目
  var nameController = TextEditingController();
  var birthController = TextEditingController();
  var placeController = TextEditingController();
  var bloodTypeController = TextEditingController();
  var favoriteThingController = TextEditingController();
  var freeController = TextEditingController();
  var slider1Koumoku1Controller = TextEditingController();
  var slider1Koumoku2Controller = TextEditingController();
  var slider2Koumoku1Controller = TextEditingController();
  var slider2Koumoku2Controller = TextEditingController();
  var slider3Koumoku1Controller = TextEditingController();
  var slider3Koumoku2Controller = TextEditingController();

  late int id;
  late String koshinFlg;
  late String saveName;
  late String profileTitle;

  //スライダー値更新
  var _sliderValue1 = 0.0;
  var _sliderValue2 = 0.0;
  var _sliderValue3 = 0.0;
  var _labelText = 'Select value';

  //プロフィール画像Pass
  late String myImagePath;

  void initState() {
    super.initState();
    this.saveName = widget.saveName;
    this.nameController = new TextEditingController(text: widget.name);
    this.birthController = new TextEditingController(text: widget.birth);
    this.placeController = new TextEditingController(text: widget.place);
    this.bloodTypeController =
        new TextEditingController(text: widget.bloodType);
    this.favoriteThingController =
        new TextEditingController(text: widget.favoriteThing);
    this.freeController = new TextEditingController(text: widget.free);
    this.id = widget.id;
    this._sliderValue1 = widget._sliderValue1;
    this.slider1Koumoku1Controller =
        new TextEditingController(text: widget.slider1Koumoku1);
    this.slider1Koumoku2Controller =
        new TextEditingController(text: widget.slider1Koumoku2);

    this._sliderValue2 = widget._sliderValue2;
    this.slider2Koumoku1Controller =
        new TextEditingController(text: widget.slider2Koumoku1);
    this.slider2Koumoku2Controller =
        new TextEditingController(text: widget.slider2Koumoku2);

    this._sliderValue3 = widget._sliderValue3;
    this.slider3Koumoku1Controller =
        new TextEditingController(text: widget.slider3Koumoku1);
    this.slider3Koumoku2Controller =
        new TextEditingController(text: widget.slider3Koumoku2);
    this.myImagePath = widget.myImagePath;

    this.koshinFlg = widget.koshinFlg;
    if (koshinFlg == "1") {
      this.profileTitle = "更新画面";
    } else {
      this.profileTitle = "新規作成画面";
    }
  }

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      theme: ThemeData(
        // brightness: Brightness.dark,
        primaryIconTheme: const IconThemeData.fallback().copyWith(
          color: Colors.black,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(profileTitle,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                )),
            //戻るボタン
            leading: new IconButton(
                icon: new Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  if (koshinFlg == "1") {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => TabPage(1)));
                  } else {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('プロフィールが保存されていません。保存しますか？'),
                            actions: <Widget>[
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.blue,
                                    onPrimary: Colors.white),
                                child: Text('いいえ'),
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => TabPage(0)));
                                },
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.blue,
                                    onPrimary: Colors.white),
                                onPressed: () async {
                                  saveName =
                                      await profileShow().saveDialog(context);
                                  if (saveName != "") {
                                    profileDb proDb = new profileDb();
                                    String name = nameController.text;
                                    String birth = birthController.text;
                                    String place = placeController.text;
                                    String bloodType = bloodTypeController.text;
                                    String favoriteThing =
                                        favoriteThingController.text;
                                    String free = freeController.text;
                                    String slider1Koumoku1 =
                                        slider1Koumoku1Controller.text;
                                    String slider1Koumoku2 =
                                        slider1Koumoku2Controller.text;
                                    String slider2Koumoku1 =
                                        slider2Koumoku1Controller.text;
                                    String slider2Koumoku2 =
                                        slider2Koumoku2Controller.text;
                                    String slider3Koumoku1 =
                                        slider3Koumoku1Controller.text;
                                    String slider3Koumoku2 =
                                        slider3Koumoku2Controller.text;
                                    DateTime now = DateTime.now();
                                    DateFormat outputFormat =
                                        DateFormat('yyyy/MM/dd HH:mm');
                                    String date = outputFormat.format(now);
                                    String query =
                                        'INSERT INTO profile003(saveName, koshinYmd, name, birth, place, bloodType, favoriteThing, free, sliderValue1, slider1Koumoku1, slider1Koumoku2, sliderValue2, slider2Koumoku1, slider2Koumoku2, sliderValue3, slider3Koumoku1, slider3Koumoku2, myImagePath) '
                                        'VALUES("$saveName", "$date", "$name", "$birth", "$place", "$bloodType", "$favoriteThing", "$free", $_sliderValue1, "$slider1Koumoku1", "$slider1Koumoku2", $_sliderValue2, "$slider2Koumoku1", "$slider2Koumoku2", $_sliderValue3, "$slider3Koumoku1", "$slider3Koumoku2", "$myImagePath")';
                                    await proDb.saveData003(
                                        saveName,
                                        date,
                                        name,
                                        birth,
                                        place,
                                        bloodType,
                                        favoriteThing,
                                        free,
                                        _sliderValue1,
                                        slider1Koumoku1,
                                        slider1Koumoku2,
                                        _sliderValue2,
                                        slider2Koumoku1,
                                        slider2Koumoku2,
                                        _sliderValue3,
                                        slider3Koumoku1,
                                        slider3Koumoku2,
                                        myImagePath,
                                        query);
                                    koshinFlg = "1";
                                  }

                                  Navigator.pop(context);
                                },
                                child: Text('はい'),
                              ),
                            ],
                          );
                        });
                  }
                }),
            //保存/共有ボタン
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.save_alt, color: Colors.black),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (childContext) {
                      return SimpleDialog(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        children: <Widget>[
                          SimpleDialogOption(
                            onPressed: () async {
                              profileDb proDb = new profileDb();
                              String name = nameController.text;
                              String birth = birthController.text;
                              String place = placeController.text;
                              String bloodType = bloodTypeController.text;
                              String favoriteThing =
                                  favoriteThingController.text;
                              String free = freeController.text;
                              String slider1Koumoku1 =
                                  slider1Koumoku1Controller.text;
                              String slider1Koumoku2 =
                                  slider1Koumoku2Controller.text;
                              String slider2Koumoku1 =
                                  slider2Koumoku1Controller.text;
                              String slider2Koumoku2 =
                                  slider2Koumoku2Controller.text;
                              String slider3Koumoku1 =
                                  slider3Koumoku1Controller.text;
                              String slider3Koumoku2 =
                                  slider3Koumoku2Controller.text;
                              DateTime now = DateTime.now();
                              DateFormat outputFormat =
                                  DateFormat('yyyy/MM/dd HH:mm');
                              String date = outputFormat.format(now);

                              if (koshinFlg == "1") {
                                ProList plist = new ProList.ProList_003(
                                    id: id,
                                    saveName: saveName,
                                    koshinYmd: date,
                                    name: name,
                                    birth_p003: birth,
                                    place_p003: place,
                                    bloodType_p003: bloodType,
                                    favoriteThing_p003: favoriteThing,
                                    free_p003: free,
                                    sliderValue1_p003: _sliderValue1,
                                    slider1Koumoku1_p003: slider1Koumoku1,
                                    slider1Koumoku2_p003: slider1Koumoku2,
                                    sliderValue2_p003: _sliderValue2,
                                    slider2Koumoku1_p003: slider2Koumoku1,
                                    slider2Koumoku2_p003: slider2Koumoku2,
                                    sliderValue3_p003: _sliderValue3,
                                    slider3Koumoku1_p003: slider3Koumoku1,
                                    slider3Koumoku2_p003: slider3Koumoku2,
                                    myImagePath_p003: myImagePath);
                                await proDb.updateData003(plist);
                                Navigator.pop(childContext);
                              } else {
                                saveName =
                                    await profileShow().saveDialog(context);
                                if (saveName != "") {
                                  String query =
                                      'INSERT INTO profile003(saveName, koshinYmd, name, birth, place, bloodType, favoriteThing, free, sliderValue1, slider1Koumoku1, slider1Koumoku2, sliderValue2, slider2Koumoku1, slider2Koumoku2, sliderValue3, slider3Koumoku1, slider3Koumoku2, myImagePath) '
                                      'VALUES("$saveName", "$date", "$name", "$birth", "$place", "$bloodType", "$favoriteThing", "$free", $_sliderValue1, "$slider1Koumoku1", "$slider1Koumoku2", $_sliderValue2, "$slider2Koumoku1", "$slider2Koumoku2", $_sliderValue3, "$slider3Koumoku1", "$slider3Koumoku2", "$myImagePath")';
                                  await proDb.saveData003(
                                      saveName,
                                      date,
                                      name,
                                      birth,
                                      place,
                                      bloodType,
                                      favoriteThing,
                                      free,
                                      _sliderValue1,
                                      slider1Koumoku1,
                                      slider1Koumoku2,
                                      _sliderValue2,
                                      slider2Koumoku1,
                                      slider2Koumoku2,
                                      _sliderValue3,
                                      slider3Koumoku1,
                                      slider3Koumoku2,
                                      myImagePath,
                                      query);
                                  koshinFlg = "1";
                                }
                                Navigator.pop(childContext);
                              }
                            },
                            child: Center(
                              child: Text(
                                "プロジェクトとして保存",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Divider(color: Colors.black),
                          SimpleDialogOption(
                            onPressed: () {
                              saveImage _saveImage = saveImage();
                              _saveImage
                                  .saveLocalImage(convertWidgetToImageKey);
                              Navigator.pop(childContext);
                            },
                            child: Center(
                              child: Text(
                                "写真として保存",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Divider(color: Colors.black),
                          SimpleDialogOption(
                            onPressed: () {
                              shareProvider _shareProvider = shareProvider();
                              _shareProvider.shareImageAndText(
                                  'test', convertWidgetToImageKey);
                            },
                            child: Center(
                              child: Text(
                                "宛先を指定してシェア",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Divider(color: Colors.black),
                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(childContext);
                            },
                            child: Center(
                              child: Text(
                                'キャンセル',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              )
            ]),
        body: RepaintBoundary(
          key: convertWidgetToImageKey,
          child: SingleChildScrollView(
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
                            width: deviceWidth * 0.35,
                            height: deviceHeight *0.15,
                            child: myImagePath == "" ?
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.black54, onPrimary: Colors.white),
                              child: Text('No image selected.'),
                              onPressed: () async {
                                myImagePath = await HomeScreenModel().selectImage();
                                setState(() {});
                              },
                            ):
                            Base64Helper.imageFromBase64String(
                              myImagePath,
                            ),
                            padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                          ),
                        ),
                      ]),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: TextField(
                              controller: nameController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: '名前（あだ名）',
                                filled: true,
                                fillColor: Color(0xFFEEA1FF),
                              ),
                            ),
                            width: deviceWidth * 0.6,
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
                            controller: birthController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: '生年月日',
                            ),
                          ),
                          width: deviceWidth * 0.28,
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Column(
                      children: <Widget>[
                        Container(
                          child: TextField(
                            controller: placeController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: '出身地',
                            ),
                          ),
                          width: deviceWidth * 0.28,
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Column(
                      children: <Widget>[
                        Container(
                          child: TextField(
                            controller: bloodTypeController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: '血液型',
                            ),
                          ),
                          width: deviceWidth * 0.28,
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
                        Padding(padding: EdgeInsets.all(10.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: deviceWidth * 0.35,
                              height: deviceHeight * 0.05,
                              alignment: Alignment.bottomLeft,
                              child: TextField(
                                controller: slider1Koumoku1Controller,
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 14),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'ex)犬',
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(20.0)),
                            Container(
                              width: deviceWidth * 0.35,
                              height: deviceHeight * 0.05,
                              alignment: Alignment.bottomLeft,
                              child: TextField(
                                controller: slider1Koumoku2Controller,
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 14),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'ex)猫',
                                ),
                              ),
                            ),
                          ],
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
                        Padding(padding: EdgeInsets.all(10.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: deviceWidth * 0.35,
                              height: deviceHeight * 0.05,
                              alignment: Alignment.bottomLeft,
                              child: TextField(
                                controller: slider2Koumoku1Controller,
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 14),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'ex)お金',
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(20.0)),
                            Container(
                              width: deviceWidth * 0.35,
                              height: deviceHeight * 0.05,
                              alignment: Alignment.bottomLeft,
                              child: TextField(
                                controller: slider2Koumoku2Controller,
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 14),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'ex)愛情',
                                ),
                              ),
                            ),
                          ],
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
                        Padding(padding: EdgeInsets.all(10.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: deviceWidth * 0.35,
                              height: deviceHeight * 0.05,
                              alignment: Alignment.bottomLeft,
                              child: TextField(
                                controller: slider3Koumoku1Controller,
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 14),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'ex)色んな経験',
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(20.0)),
                            Container(
                              width: deviceWidth * 0.35,
                              height: deviceHeight * 0.05,
                              alignment: Alignment.bottomLeft,
                              child: TextField(
                                controller: slider3Koumoku2Controller,
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 14),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'ex)一つを追求',
                                ),
                              ),
                            ),
                          ],
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
                        Padding(padding: EdgeInsets.all(10.0)),
                      ],
                    ),
                  ),
                ),
                Container(
                    child: Container(
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  child: TextField(
                    maxLines: null,
                    style: TextStyle(
                        fontSize: 18, color: Colors.black54, height: deviceHeight*0.001),
                    controller: freeController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'フリースペース',
                    ),
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
