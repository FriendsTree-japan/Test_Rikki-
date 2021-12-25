import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../main.dart';
import '../02_DateBase/common/02_profile_db.dart';
import '../02_DateBase/common/02_profile_show.dart';
import '../99_Others/99_create_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../99_Others/99_base64_helper.dart';
import '../99_Others/99_profile_image.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double widgetHeightSizeFirst;
  static late double widgetHeightSizeSecond;
  static late double widgetHeightSizeThird;
  static late double widgetPaddingSize;
  static late double bigFontSize;
  static late double middleFontSize;
  static late double smallFontSize;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);

    //デバイスのサイズを取得
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;

    //フォントのサイズを定義
    bigFontSize = 40.0;
    middleFontSize = 14.0;
    smallFontSize = 12.0;

    //各ウィジェットの最大値を定義
    if (screenHeight > 900) {
      widgetHeightSizeFirst = 250.0;
      widgetHeightSizeSecond = 140.0;
      widgetHeightSizeThird = 200.0;
    } else {
      widgetHeightSizeFirst = 200.0;
      widgetHeightSizeSecond = 126.0;
      widgetHeightSizeThird = 180.0;
    }

    //各ウィジェット間のPaddingの値を定義
    if (screenHeight > 900) {
      widgetPaddingSize = 20.0;
    } else if (screenHeight > 700) {
      widgetPaddingSize = 15.0;
    } else {
      widgetPaddingSize = 5.0;
    }
  }
}

class ColorConfig {
  static late Color Black;
  static late Color Orange;
  static late Color skyblue;
  static late Color White;
  static late Color Cream;
  static late Color Gray;
  static late Color GrayWhite;

  void init(BuildContext context) {
    //使用する色を定義
    Black = Color(0xFF737373);
    Orange = Color(0xFFFFC0A3);
    skyblue = Color(0xFF5CE1E6);
    White = Color(0xFFFFFFFF);
    Cream = Color(0xFFFAF7F3);
    Gray = Color(0xFFEBEAEF);
    GrayWhite = Color(0xFFE2E2DF);
  }
}

class profile_003 extends StatefulWidget {
  late int id;
  late final String saveName;
  late final String koshinYmd;
  late final String name;
  late final String birth;
  late final String place;
  late final String location;
  late final String SNS1;
  late final String SNS2;
  late final String text1;
  late final String text2;
  late final String personal1;
  late final String personal2;
  late final String hobby1;
  late final String hobby2;
  late final String tokugi;
  late final String dream;
  late final String man;
  late final String kutiiguse;
  late final String sukilaction;
  late final String freespace;
  late final String myImagePath;
  late final String koshinFlg;

  profile_003.Details(
      this.id,
      this.saveName,
      this.koshinYmd,
      this.name,
      this.birth,
      this.place,
      this.location,
      this.SNS1,
      this.SNS2,
      this.text1,
      this.text2,
      this.personal1,
      this.personal2,
      this.hobby1,
      this.hobby2,
      this.tokugi,
      this.dream,
      this.man,
      this.kutiiguse,
      this.sukilaction,
      this.freespace,
      this.myImagePath,
      this.koshinFlg);

  profile_003.make() {
    this.id = 0;
    this.saveName = "";
    this.koshinYmd = "";
    this.name = "";
    this.birth = "";
    this.place = "";
    this.location = "";
    this.SNS1 = "";
    this.SNS2 = "";
    this.text1 = "";
    this.text2 = "";
    this.personal1 = "";
    this.personal2 = "";
    this.hobby1 = "";
    this.hobby2 = "";
    this.tokugi = "";
    this.dream = "";
    this.man = "";
    this.kutiiguse = "";
    this.sukilaction = "";
    this.freespace = "";
    this.myImagePath = "";
    this.koshinFlg = "0";
  }

  @override
  _profile_003 createState() => _profile_003();
}

class _profile_003 extends State<profile_003> {
  var nameController = TextEditingController();
  var birthController = TextEditingController();
  var placeController = TextEditingController();
  var locationController = TextEditingController();
  var SNS1Controller = TextEditingController();
  var SNS2Controller = TextEditingController();
  var text1Controller = TextEditingController();
  var text2Controller = TextEditingController();
  var personal1Controller = TextEditingController();
  var personal2Controller = TextEditingController();
  var hobby1Controller = TextEditingController();
  var hobby2Controller = TextEditingController();
  var tokugiController = TextEditingController();
  var dreamController = TextEditingController();
  var manController = TextEditingController();
  var kutiiguseController = TextEditingController();
  var sukilactionController = TextEditingController();
  var freespaceController = TextEditingController();
  late int id;
  late String koshinFlg;
  late String saveName;
  late String profileTitle;

  //プロフィール画像Pass
  late String myImagePath;

  void initState() {
    super.initState();
    this.saveName = widget.saveName;
    this.nameController = new TextEditingController(text: widget.name);
    this.birthController = new TextEditingController(text: widget.birth);
    this.placeController = new TextEditingController(text: widget.place);
    this.locationController = new TextEditingController(text: widget.location);
    this.SNS1Controller = new TextEditingController(text: widget.SNS1);
    this.SNS2Controller = new TextEditingController(text: widget.SNS2);
    this.text1Controller = new TextEditingController(text: widget.text1);
    this.text2Controller = new TextEditingController(text: widget.text2);
    this.personal1Controller =
        new TextEditingController(text: widget.personal1);
    this.personal2Controller =
        new TextEditingController(text: widget.personal2);
    this.hobby1Controller = new TextEditingController(text: widget.hobby1);
    this.hobby2Controller = new TextEditingController(text: widget.hobby2);
    this.tokugiController = new TextEditingController(text: widget.tokugi);
    this.dreamController = new TextEditingController(text: widget.dream);
    this.manController = new TextEditingController(text: widget.man);
    this.kutiiguseController =
        new TextEditingController(text: widget.kutiiguse);
    this.sukilactionController =
        new TextEditingController(text: widget.sukilaction);
    this.freespaceController =
        new TextEditingController(text: widget.freespace);
    this.id = widget.id;
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
    SizeConfig().init(context);
    ColorConfig().init(context);

    return MaterialApp(
      theme: ThemeData(
        // brightness: Brightness.dark,
        primaryIconTheme: const IconThemeData.fallback().copyWith(
          color: ColorConfig.Black,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(profileTitle,
                style: TextStyle(
                  color: ColorConfig.Black,
                  fontSize: 18,
                )),
            //戻るボタン
            leading: new IconButton(
                icon: new Icon(Icons.arrow_back, color: ColorConfig.Black),
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
                                    primary: ColorConfig.GrayWhite,
                                    onPrimary: ColorConfig.Black),
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
                                    primary: Colors.green,
                                    onPrimary: Colors.white),
                                onPressed: () async {
                                  saveName =
                                      await profileShow().saveDialog(context);
                                  if (saveName != "") {
                                    profileDb proDb = new profileDb();
                                    String name = nameController.text;
                                    String birth = birthController.text;
                                    String place = placeController.text;
                                    String location = locationController.text;
                                    String SNS1 = SNS1Controller.text;
                                    String SNS2 = SNS2Controller.text;
                                    String text1 = text1Controller.text;
                                    String text2 = text2Controller.text;
                                    String personal1 = personal1Controller.text;
                                    String personal2 = personal2Controller.text;
                                    String hobby1 = hobby1Controller.text;
                                    String hobby2 = hobby2Controller.text;
                                    String tokugi = tokugiController.text;
                                    String dream = dreamController.text;
                                    String man = manController.text;
                                    String kutiiguse = kutiiguseController.text;
                                    String sukilaction =
                                        sukilactionController.text;
                                    String freespace = freespaceController.text;
                                    DateTime now = DateTime.now();
                                    DateFormat outputFormat =
                                        DateFormat('yyyy/MM/dd HH:mm');
                                    String date = outputFormat.format(now);
                                    String query =
                                        'INSERT INTO profile003(saveName, koshinYmd, name, birth, place, location, SNS1, SNS2, text1, text2, personal1, personal2, hobby1, hobby2, tokugi, dream, man, kutiiguse, sukilaction, freespace, myImagePath) '
                                        'VALUES("$saveName", "$date", "$name", "$birth", "$place", "$location", "$SNS1", "$SNS2", "$text1", "$text2", "$personal1", "$personal2", "$hobby1", "$hobby2", "$tokugi", "$dream", "$man", "$kutiiguse", "$sukilaction", "$freespace", "$myImagePath")';

                                    await proDb.saveData003(
                                        saveName,
                                        date,
                                        name,
                                        birth,
                                        place,
                                        location,
                                        SNS1,
                                        SNS2,
                                        text1,
                                        text2,
                                        personal1,
                                        personal2,
                                        hobby1,
                                        hobby2,
                                        tokugi,
                                        dream,
                                        man,
                                        kutiiguse,
                                        sukilaction,
                                        freespace,
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
                icon: Icon(Icons.save_alt, color: ColorConfig.Black),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (childContext) {
                      return SimpleDialog(
                        backgroundColor: ColorConfig.White,
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
                              String location = locationController.text;
                              String SNS1 = SNS1Controller.text;
                              String SNS2 = SNS2Controller.text;
                              String text1 = text1Controller.text;
                              String text2 = text2Controller.text;
                              String personal1 = personal1Controller.text;
                              String personal2 = personal2Controller.text;
                              String hobby1 = hobby1Controller.text;
                              String hobby2 = hobby2Controller.text;
                              String tokugi = tokugiController.text;
                              String dream = dreamController.text;
                              String man = manController.text;
                              String kutiiguse = kutiiguseController.text;
                              String sukilaction = sukilactionController.text;
                              String freespace = freespaceController.text;
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
                                    location_p003: location,
                                    SNS1_p003: SNS1,
                                    SNS2_p003: SNS2,
                                    text1_p003: text1,
                                    text2_p003: text2,
                                    personal1_p003: personal1,
                                    personal2_p003: personal2,
                                    hobby1_p003: hobby1,
                                    hobby2_p003: hobby2,
                                    tokugi_p003: tokugi,
                                    dream_p003: dream,
                                    man_p003: man,
                                    kutiiguse_p003: kutiiguse,
                                    sukilaction_p003: sukilaction,
                                    freespace_p003: freespace,
                                    myImagePath_p003: myImagePath);
                                await proDb.updateData003(plist);
                                Navigator.pop(childContext);
                              } else {
                                saveName =
                                    await profileShow().saveDialog(context);
                                if (saveName != "") {
                                  String query =
                                      'INSERT INTO profile003(saveName, koshinYmd, name, birth, place, location, SNS1, SNS2, text1, text2, personal1, personal2, hobby1, hobby2, tokugi, dream, man, kutiiguse, sukilaction, freespace, myImagePath) '
                                      'VALUES("$saveName", "$date", "$name", "$birth", "$place", "$location", "$SNS1", "$SNS2", "$text1", "$text2", "$personal1", "$personal2", "$hobby1", "$hobby2", "$tokugi", "$dream", "$man", "$kutiiguse", "$sukilaction", "$freespace", "$myImagePath")';

                                  await proDb.saveData003(
                                      saveName,
                                      date,
                                      name,
                                      birth,
                                      place,
                                      location,
                                      SNS1,
                                      SNS2,
                                      text1,
                                      text2,
                                      personal1,
                                      personal2,
                                      hobby1,
                                      hobby2,
                                      tokugi,
                                      dream,
                                      man,
                                      kutiiguse,
                                      sukilaction,
                                      freespace,
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
                              print(SizeConfig.screenHeight);
                              print(SizeConfig.screenWidth);
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
            child: Stack(children: [
              Container(
                height: SizeConfig.screenHeight,
                child: Image.asset(
                    'images/profile003/profile003_background.jpg',
                    fit: BoxFit.cover),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(
                            0.0,
                            SizeConfig.screenHeight * 0.01,
                            0.0,
                            SizeConfig.screenHeight * 0.01),
                        child: Text("My Profile",
                            style: TextStyle(
                              color: ColorConfig.skyblue,
                              fontSize: SizeConfig.bigFontSize,
                              fontFamily: 'Nicofont',
                            ))),
                  ),
                  Stack(
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(
                            maxHeight: SizeConfig.widgetHeightSizeFirst* 0.888),
                        child: Container(
                          decoration: BoxDecoration(
                            color: ColorConfig.skyblue,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: SizeConfig.screenHeight * 0.35,
                          width: SizeConfig.screenWidth * 0.82,
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.screenWidth * 0.02,
                              0.0,
                              SizeConfig.screenWidth * 0.02,
                              0.0),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                                maxHeight:
                                    SizeConfig.widgetHeightSizeFirst * 0.788),
                            child: Container(
                              decoration: BoxDecoration(
                                color: ColorConfig.White,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: SizeConfig.screenHeight * 0.38,
                              width: SizeConfig.screenWidth * 0.75,
                              padding: EdgeInsets.fromLTRB(
                                  SizeConfig.screenWidth * 0.02,
                                  0.0,
                                  SizeConfig.screenWidth * 0.02,
                                  0.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    child: Text("名前",
                                                        style: TextStyle(
                                                            color: ColorConfig
                                                                .Black,
                                                            fontSize: 12.0))),
                                                Container(
                                                  height: 20,
                                                  width:
                                                      SizeConfig.screenWidth *
                                                          0.35,
                                                  child: TextField(
                                                    controller: nameController,
                                                    maxLength: 8,
                                                    decoration: InputDecoration(
                                                      counterText: '',
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              ColorConfig.White,
                                                        ),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          ColorConfig.Gray,
                                                    ),
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                ),
                                                Container(
                                                    child: Text("誕生日",
                                                        style: TextStyle(
                                                            color: ColorConfig
                                                                .Black,
                                                            fontSize: 12.0))),
                                                Container(
                                                  height: 20,
                                                  width:
                                                      SizeConfig.screenWidth *
                                                          0.35,
                                                  child: TextField(
                                                    controller: birthController,
                                                    maxLength: 8,
                                                    decoration: InputDecoration(
                                                      counterText: '',
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: ColorConfig
                                                                .White),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          ColorConfig.Gray,
                                                    ),
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                    child: Text("場所",
                                                        style: TextStyle(
                                                            color: ColorConfig
                                                                .Black,
                                                            fontSize: 12.0))),
                                                Container(
                                                  height: 20,
                                                  width:
                                                      SizeConfig.screenWidth *
                                                          0.35,
                                                  child: TextField(
                                                    controller:
                                                        locationController,
                                                    maxLength: 8,
                                                    decoration: InputDecoration(
                                                      counterText: '',
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: ColorConfig
                                                                .Gray),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          ColorConfig.Gray,
                                                    ),
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(padding: EdgeInsets.all(15)),
                                          Align(
                                            alignment:
                                                FractionalOffset(0.98, 0),
                                            child: InkWell(
                                                child: Container(
                                                  height: 100,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            ColorConfig.skyblue,
                                                        width: 6),
                                                    color: ColorConfig.White,
                                                  ),
                                                  child: myImagePath == ""
                                                      ? Image.asset(
                                                          'images/common/upper_body-2.png',
                                                          fit: BoxFit.cover)
                                                      : Base64Helper
                                                          .imageFromBase64String(
                                                              myImagePath),
                                                ),
                                                onTap: () async {
                                                  Future result = Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              ProfileImage.image(
                                                                  myImagePath,
                                                                  "1")));
                                                  myImagePath =
                                                      await result as String;
                                                  setState(() {});
                                                }),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        child: Text("SNS",
                                            style: TextStyle(
                                                color: ColorConfig.Black,
                                                fontSize: 12.0))),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Row(children: [
                                              FaIcon(
                                                FontAwesomeIcons.instagram,
                                                color: ColorConfig.Black,
                                                size: 10,
                                              ),
                                              Container(
                                                height: 20,
                                                width: SizeConfig.screenWidth *
                                                    0.32,
                                                child: TextField(
                                                  controller: SNS1Controller,
                                                  maxLength: 14,
                                                  decoration: InputDecoration(
                                                    counterText: '',
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: ColorConfig
                                                              .White),
                                                    ),
                                                    filled: true,
                                                    fillColor: ColorConfig.Gray,
                                                  ),
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                ),
                                              ),
                                            ]),
                                          ),
                                          Container(
                                            child: Row(children: [
                                              Row(children: [
                                                FaIcon(
                                                  FontAwesomeIcons.twitter,
                                                  color: ColorConfig.Black,
                                                  size: 10,
                                                ),
                                                Container(
                                                  height: 20,
                                                  width:
                                                      SizeConfig.screenWidth *
                                                          0.32,
                                                  child: TextField(
                                                    controller: SNS2Controller,
                                                    maxLength: 14,
                                                    decoration: InputDecoration(
                                                      counterText: '',
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: ColorConfig
                                                                .White),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          ColorConfig.Gray,
                                                    ),
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                ),
                                              ]),
                                            ]),
                                          )
                                        ])
                                  ]),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          maxHeight: SizeConfig.widgetHeightSizeFirst),
                      child: Container(
                        height: SizeConfig.screenHeight * 0.03,
                        width: SizeConfig.screenWidth * 0.8,
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.screenWidth * 0.01,
                            0.0,
                            SizeConfig.screenWidth * 0.01,
                            0.0),
                        decoration: BoxDecoration(color: ColorConfig.skyblue),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 20,
                                  width: SizeConfig.screenWidth * 0.5,
                                  padding:
                                      EdgeInsets.fromLTRB(1.5, 0.0, 1.5, 0.0),
                                  child: TextField(
                                    controller: text1Controller,
                                    maxLength: 13,
                                    decoration: InputDecoration(
                                      counterText: '',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: ColorConfig.skyblue),
                                      ),
                                      filled: true,
                                      fillColor: ColorConfig.skyblue,
                                    ),
                                    style: TextStyle(
                                        fontSize: 12, color: ColorConfig.White),
                                  ),
                                ),
                                Container(
                                  child: Text("って呼んでね！",
                                      style: TextStyle(
                                        color: ColorConfig.White,
                                        fontSize: 12,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          maxHeight: SizeConfig.widgetHeightSizeFirst),
                      child: Container(
                        height: SizeConfig.screenHeight * 0.03,
                        width: SizeConfig.screenWidth * 0.8,
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.screenWidth * 0.01,
                            0.0,
                            SizeConfig.screenWidth * 0.01,
                            0.0),
                        decoration: BoxDecoration(color: ColorConfig.Gray),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text("性格はよく",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: 12,
                                      )),
                                ),
                                Container(
                                  height: 20,
                                  width: SizeConfig.screenWidth * 0.35,
                                  padding:
                                      EdgeInsets.fromLTRB(1.5, 0.0, 1.5, 0.0),
                                  child: TextField(
                                    controller: personal1Controller,
                                    maxLength: 8,
                                    decoration: InputDecoration(
                                      counterText: '',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: ColorConfig.Gray),
                                      ),
                                      filled: true,
                                      fillColor: ColorConfig.Gray,
                                    ),
                                    style: TextStyle(
                                        fontSize: 12, color: ColorConfig.Black),
                                  ),
                                ),
                                Container(
                                  child: Text("って言われるけど",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: 12,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          maxHeight: SizeConfig.widgetHeightSizeFirst),
                      child: Container(
                        height: SizeConfig.screenHeight * 0.03,
                        width: SizeConfig.screenWidth * 0.8,
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.screenWidth * 0.01,
                            0.0,
                            SizeConfig.screenWidth * 0.01,
                            0.0),
                        decoration: BoxDecoration(color: ColorConfig.skyblue),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text("自分では",
                                      style: TextStyle(
                                        color: ColorConfig.White,
                                        fontSize: 12,
                                      )),
                                ),
                                Container(
                                  height: 20,
                                  width: SizeConfig.screenWidth * 0.35,
                                  padding:
                                      EdgeInsets.fromLTRB(1.5, 0.0, 1.5, 0.0),
                                  child: TextField(
                                    controller: personal2Controller,
                                    maxLength: 8,
                                    decoration: InputDecoration(
                                      counterText: '',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: ColorConfig.skyblue),
                                      ),
                                      filled: true,
                                      fillColor: ColorConfig.skyblue,
                                    ),
                                    style: TextStyle(
                                        fontSize: 12, color: ColorConfig.White),
                                  ),
                                ),
                                Container(
                                  child: Text("だと思うなぁ...！",
                                      style: TextStyle(
                                        color: ColorConfig.White,
                                        fontSize: 12,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          maxHeight: SizeConfig.widgetHeightSizeFirst),
                      child: Container(
                        height: SizeConfig.screenHeight * 0.03,
                        width: SizeConfig.screenWidth * 0.8,
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.screenWidth * 0.01,
                            0.0,
                            SizeConfig.screenWidth * 0.01,
                            0.0),
                        decoration: BoxDecoration(color: ColorConfig.Gray),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text("趣味は",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: 12,
                                      )),
                                ),
                                Container(
                                  height: 20,
                                  width: SizeConfig.screenWidth * 0.25,
                                  padding:
                                      EdgeInsets.fromLTRB(1.5, 0.0, 1.5, 0.0),
                                  child: TextField(
                                    controller: hobby1Controller,
                                    maxLength: 5,
                                    decoration: InputDecoration(
                                      counterText: '',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: ColorConfig.Gray),
                                      ),
                                      filled: true,
                                      fillColor: ColorConfig.Gray,
                                    ),
                                    style: TextStyle(
                                        fontSize: 12, color: ColorConfig.Black),
                                  ),
                                ),
                                Container(
                                  child: Text("で、最近は",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: 12,
                                      )),
                                ),
                                Container(
                                  height: 20,
                                  width: SizeConfig.screenWidth * 0.25,
                                  padding:
                                      EdgeInsets.fromLTRB(1.5, 0.0, 1.5, 0.0),
                                  child: TextField(
                                    controller: hobby2Controller,
                                    maxLength: 5,
                                    decoration: InputDecoration(
                                      counterText: '',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: ColorConfig.Gray),
                                      ),
                                      filled: true,
                                      fillColor: ColorConfig.Gray,
                                    ),
                                    style: TextStyle(
                                        fontSize: 12, color: ColorConfig.Black),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          maxHeight: SizeConfig.widgetHeightSizeFirst),
                      child: Container(
                        height: SizeConfig.screenHeight * 0.03,
                        width: SizeConfig.screenWidth * 0.8,
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.screenWidth * 0.01,
                            0.0,
                            SizeConfig.screenWidth * 0.01,
                            0.0),
                        decoration: BoxDecoration(color: ColorConfig.skyblue),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text("にすごくはまってる！特技は",
                                      style: TextStyle(
                                        color: ColorConfig.White,
                                        fontSize: 12,
                                      )),
                                ),
                                Container(
                                  height: 20,
                                  width: SizeConfig.screenWidth * 0.35,
                                  padding:
                                      EdgeInsets.fromLTRB(1.5, 0.0, 1.5, 0.0),
                                  child: TextField(
                                    controller: text2Controller,
                                    maxLength: 8,
                                    decoration: InputDecoration(
                                      counterText: '',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: ColorConfig.skyblue),
                                      ),
                                      filled: true,
                                      fillColor: ColorConfig.skyblue,
                                    ),
                                    style: TextStyle(
                                        fontSize: 12, color: ColorConfig.White),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          maxHeight: SizeConfig.widgetHeightSizeFirst),
                      child: Container(
                        height: SizeConfig.screenHeight * 0.03,
                        width: SizeConfig.screenWidth * 0.8,
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.screenWidth * 0.01,
                            0.0,
                            SizeConfig.screenWidth * 0.01,
                            0.0),
                        decoration: BoxDecoration(color: ColorConfig.Gray),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text("いつもは",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: 12,
                                      )),
                                ),
                                Container(
                                  height: 20,
                                  width: SizeConfig.screenWidth * 0.37,
                                  padding:
                                      EdgeInsets.fromLTRB(1.5, 0.0, 1.5, 0.0),
                                  child: TextField(
                                    controller: text2Controller,
                                    maxLength: 9,
                                    decoration: InputDecoration(
                                      counterText: '',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: ColorConfig.Gray),
                                      ),
                                      filled: true,
                                      fillColor: ColorConfig.Gray,
                                    ),
                                    style: TextStyle(
                                        fontSize: 12, color: ColorConfig.Black),
                                  ),
                                ),
                                Container(
                                  child: Text("して過ごしてるよ",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: 12,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Stack(
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(
                            maxHeight: SizeConfig.widgetHeightSizeFirst),
                        child: Container(
                          decoration: BoxDecoration(
                            color: ColorConfig.skyblue,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: SizeConfig.screenHeight * 0.15,
                          width: SizeConfig.screenWidth * 0.82,
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.screenWidth * 0.02,
                              0.0,
                              SizeConfig.screenWidth * 0.02,
                              0.0),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                                maxHeight:
                                    SizeConfig.widgetHeightSizeFirst * 0.9),
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: ColorConfig.White,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        height: SizeConfig.screenHeight * 0.055,
                                        width: SizeConfig.screenWidth * 0.38,
                                        padding: EdgeInsets.fromLTRB(
                                            SizeConfig.screenWidth * 0.02,
                                            0.0,
                                            SizeConfig.screenWidth * 0.02,
                                            0.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text("将来の夢は？",
                                                  style: TextStyle(
                                                    color: ColorConfig.skyblue,
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ),
                                            Container(
                                              height: 15,
                                              width:
                                                  SizeConfig.screenWidth * 0.4,
                                              padding: EdgeInsets.fromLTRB(
                                                  1.5, 0.0, 1.5, 0.0),
                                              child: TextField(
                                                controller: dreamController,
                                                maxLength: 8,
                                                decoration: InputDecoration(
                                                  counterText: '',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: ColorConfig.White),
                                                  ),
                                                  filled: true,
                                                  fillColor: ColorConfig.White,
                                                ),
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: ColorConfig.Black),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            2.5, 2.5, 2.5, 2.5),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: ColorConfig.White,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        height: SizeConfig.screenHeight * 0.055,
                                        width: SizeConfig.screenWidth * 0.38,
                                        padding: EdgeInsets.fromLTRB(
                                            SizeConfig.screenWidth * 0.02,
                                            0.0,
                                            SizeConfig.screenWidth * 0.02,
                                            0.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text("口ぐせは？",
                                                  style: TextStyle(
                                                    color: ColorConfig.skyblue,
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ),
                                            Container(
                                              height: 15,
                                              width:
                                                  SizeConfig.screenWidth * 0.4,
                                              padding: EdgeInsets.fromLTRB(
                                                  1.5, 0.0, 1.5, 0.0),
                                              child: TextField(
                                                controller: kutiiguseController,
                                                maxLength: 8,
                                                decoration: InputDecoration(
                                                  counterText: '',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            ColorConfig.White),
                                                  ),
                                                  filled: true,
                                                  fillColor: ColorConfig.White,
                                                ),
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: ColorConfig.Black),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.fromLTRB(2.5, 2.5, 2.5, 2.5),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: ColorConfig.White,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        height: SizeConfig.screenHeight * 0.055,
                                        width: SizeConfig.screenWidth * 0.38,
                                        padding: EdgeInsets.fromLTRB(
                                            SizeConfig.screenWidth * 0.02,
                                            0.0,
                                            SizeConfig.screenWidth * 0.02,
                                            0.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text("憧れの人は？",
                                                  style: TextStyle(
                                                    color: ColorConfig.skyblue,
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ),
                                            Container(
                                              height: 15,
                                              width:
                                                  SizeConfig.screenWidth * 0.4,
                                              padding: EdgeInsets.fromLTRB(
                                                  1.5, 0.0, 1.5, 0.0),
                                              child: TextField(
                                                controller: manController,
                                                maxLength: 8,
                                                decoration: InputDecoration(
                                                  counterText: '',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            ColorConfig.White),
                                                  ),
                                                  filled: true,
                                                  fillColor: ColorConfig.White,
                                                ),
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: ColorConfig.Black),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            2.5, 2.5, 2.5, 2.5),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: ColorConfig.White,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        height: SizeConfig.screenHeight * 0.055,
                                        width: SizeConfig.screenWidth * 0.38,
                                        padding: EdgeInsets.fromLTRB(
                                            SizeConfig.screenWidth * 0.02,
                                            0.0,
                                            SizeConfig.screenWidth * 0.02,
                                            0.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text("好きな場所は？",
                                                  style: TextStyle(
                                                    color: ColorConfig.skyblue,
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ),
                                            Container(
                                              height: 15,
                                              width:
                                                  SizeConfig.screenWidth * 0.4,
                                              padding: EdgeInsets.fromLTRB(
                                                  1.5, 0.0, 1.5, 0.0),
                                              child: TextField(
                                                controller:
                                                    sukilactionController,
                                                maxLength: 8,
                                                decoration: InputDecoration(
                                                  counterText: '',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            ColorConfig.White),
                                                  ),
                                                  filled: true,
                                                  fillColor: ColorConfig.White,
                                                ),
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: ColorConfig.Black),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorConfig.White,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: SizeConfig.screenHeight * 0.13,
                    width: SizeConfig.screenWidth * 0.82,
                    child: Column(
                      children: [
                        Container(
                          height: 26,
                          child: Text(
                            "Free Space",
                            style: TextStyle(
                                color: ColorConfig.skyblue,
                                fontFamily: 'Nicofont',
                                fontSize: 20),
                          ),
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                              maxHeight: SizeConfig.widgetHeightSizeThird * 0.8),
                          child: Container(
                            height: SizeConfig.screenWidth * 0.15,
                            width: SizeConfig.screenWidth * 0.7,
                            child: TextField(
                              controller: freespaceController,
                              maxLines: 2,
                              maxLength: 36,
                              decoration: InputDecoration(
                                counterText: '',
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: ColorConfig.White),
                                ),
                                filled: true,
                                fillColor: ColorConfig.White,
                              ),
                              style: TextStyle(
                                  fontSize: 12, color: ColorConfig.Black),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
