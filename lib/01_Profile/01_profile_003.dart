import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../main.dart';
import '../02_DateBase/common/02_profile_db.dart';
import '../02_DateBase/common/02_profile_show.dart';
import '../99_Others/99_create_image.dart';

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
  static late Color White;
  static late Color Cream;

  void init(BuildContext context) {
    //使用する色を定義
    Black = Color(0xFF737373);
    Orange = Color(0xFFFFC0A3);
    White = Color(0xFFFFFFFF);
    Cream = Color(0xFFFAF7F3);
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
    this.personal1Controller = new TextEditingController(text: widget.personal1);
    this.personal2Controller = new TextEditingController(text: widget.personal2);
    this.hobby1Controller = new TextEditingController(text: widget.hobby1);
    this.hobby2Controller = new TextEditingController(text: widget.hobby2);
    this.tokugiController = new TextEditingController(text: widget.tokugi);
    this.dreamController = new TextEditingController(text: widget.dream);
    this.manController = new TextEditingController(text: widget.man);
    this.kutiiguseController = new TextEditingController(text: widget.kutiiguse);
    this.sukilactionController = new TextEditingController(text: widget.sukilaction);
    this.freespaceController = new TextEditingController(text: widget.freespace);
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
                                    primary: Colors.green,
                                    onPrimary: ColorConfig.White),
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
                                    String birth = birthController .text;
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
                                    String query =
                                        'INSERT INTO profile003(saveName, koshinYmd, name, birth, place, location, SNS1, SNS2, text1, text2, personal1, personal2, hobby1, hobby2, tokugi, dream, man, kutiiguse, sukilaction, freespace) '
                                        'VALUES("$saveName", "$date", "$name", "$birth", "$place", "$location", "$SNS1", "$SNS2", "$text1", "$text2", "$personal1", "$personal2", "$hobby1", "$hobby2", "$tokugi", "$dream", "$man", "$kutiiguse", "$sukilaction", "$freespace")';

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
                                    freespace_p003: freespace,);
                                await proDb.updateData003(plist);
                                Navigator.pop(childContext);
                              } else {
                                saveName =
                                await profileShow().saveDialog(context);
                                if (saveName != "") {
                                  String query =
                                      'INSERT INTO profile003(saveName, koshinYmd, name, birth, place, location, SNS1, SNS2, text1, text2, personal1, personal2, hobby1, hobby2, tokugi, dream, man, kutiiguse, sukilaction, freespace) '
                                      'VALUES("$saveName", "$date", "$name", "$birth", "$place", "$location", "$SNS1", "$SNS2", "$text1", "$text2", "$personal1", "$personal2", "$hobby1", "$hobby2", "$tokugi", "$dream", "$man", "$kutiiguse", "$sukilaction", "$freespace")';

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
                    'images/profile002/profile002_background.png',
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
                                color: ColorConfig.Orange,
                                fontFamily: 'Nicofont',
                                fontSize: SizeConfig.bigFontSize))),
                  ),
                  Padding(
                      padding:
                      EdgeInsets.only(top: SizeConfig.widgetPaddingSize)),
                  Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          maxHeight: SizeConfig.widgetHeightSizeFirst),
                      child: Container(
                        height: SizeConfig.screenHeight * 0.3,
                        width: SizeConfig.screenWidth * 0.9,
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.screenWidth * 0.02,
                            0.0,
                            SizeConfig.screenWidth * 0.02,
                            0.0),
                        decoration: BoxDecoration(color: ColorConfig.Cream),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text("わたし・ぼくの名前は",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: SizeConfig.middleFontSize,
                                      )),
                                ),
                                Container(
                                  height: 20,
                                  width: SizeConfig.screenWidth * 0.3,
                                  padding:
                                  EdgeInsets.fromLTRB(1.5, 0.0, 1.5, 0.0),
                                  child: TextField(
                                    controller: nameController,
                                    maxLength: 20,
                                    decoration: InputDecoration(
                                      counterText: '',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: ColorConfig.White),
                                      ),
                                      filled: true,
                                      fillColor: ColorConfig.White,
                                    ),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                Container(
                                  child: Text("だから",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: SizeConfig.middleFontSize,
                                      )),
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(top: 8.5)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Container(
                                      height: 20,
                                      width: SizeConfig.screenWidth * 0.4,
                                      padding: EdgeInsets.fromLTRB(
                                          1.5, 0.0, 1.5, 0.0),
                                      child: TextField(

                                        maxLength: 22,
                                        decoration: InputDecoration(
                                          counterText: '',
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: ColorConfig.White),
                                          ),
                                          filled: true,
                                          fillColor: ColorConfig.White,
                                        ),
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      child: Text("ってよんでねっ。",
                                          style: TextStyle(
                                            color: ColorConfig.Black,
                                            fontSize: SizeConfig.middleFontSize,
                                          )),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(top: 5.0)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text("誕生日は",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: SizeConfig.middleFontSize,
                                      )),
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      width: SizeConfig.screenWidth * 0.15,
                                      height: 20,
                                      child: TextField(

                                        maxLength: 4,
                                        decoration: InputDecoration(
                                          counterText: '',
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: ColorConfig.White),
                                          ),
                                          filled: true,
                                          fillColor: ColorConfig.White,
                                        ),
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  child: Text("年",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: SizeConfig.middleFontSize,
                                      )),
                                ),
                                Container(
                                  width: SizeConfig.screenWidth * 0.125,
                                  height: 20,
                                  child: TextField(

                                    maxLength: 2,
                                    decoration: InputDecoration(
                                      counterText: '',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: ColorConfig.White),
                                      ),
                                      filled: true,
                                      fillColor: ColorConfig.White,
                                    ),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                Container(
                                  child: Text("月",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: SizeConfig.middleFontSize,
                                      )),
                                ),
                                Container(
                                  width: SizeConfig.screenWidth * 0.125,
                                  height: 20,
                                  child: TextField(
                                    controller: placeController,
                                    maxLength: 2,
                                    decoration: InputDecoration(
                                      counterText: '',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: ColorConfig.White),
                                      ),
                                      filled: true,
                                      fillColor: ColorConfig.White,
                                    ),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      child: Text("日で、性格は",
                                          style: TextStyle(
                                            color: ColorConfig.Black,
                                            fontSize: SizeConfig.middleFontSize,
                                          )),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(top: 5.0)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: SizeConfig.screenWidth * 0.6,
                                  height: 20,
                                  child: TextField(
                                    controller: locationController,
                                    maxLength: 22,
                                    decoration: InputDecoration(
                                      counterText: '',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: ColorConfig.White),
                                      ),
                                      filled: true,
                                      fillColor: ColorConfig.White,
                                    ),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      child: Text("だよ。",
                                          style: TextStyle(
                                            color: ColorConfig.Black,
                                            fontSize: SizeConfig.middleFontSize,
                                          )),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(top: 5.0)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text("最近の特技・趣味は",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: SizeConfig.middleFontSize,
                                      )),
                                ),
                                Container(
                                  width: SizeConfig.screenWidth * 0.45,
                                  height: 20,
                                  child: TextField(
                                    controller: SNS1Controller,
                                    maxLength: 30,
                                    decoration: InputDecoration(
                                      counterText: '',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: ColorConfig.White),
                                      ),
                                      filled: true,
                                      fillColor: ColorConfig.White,
                                    ),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                Container(
                                  child: Text("で",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: SizeConfig.middleFontSize,
                                      )),
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(top: 10.0)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text("マイブームは",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: SizeConfig.middleFontSize,
                                      )),
                                ),
                                Container(
                                  width: SizeConfig.screenWidth * 0.5,
                                  height: 20,
                                  child: TextField(
                                     maxLength: 28,
                                    decoration: InputDecoration(
                                      counterText: '',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: ColorConfig.White),
                                      ),
                                      filled: true,
                                      fillColor: ColorConfig.White,
                                    ),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(top: 5.0)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text("なんだ〜！これからよろしくね！",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: SizeConfig.middleFontSize,
                                      )),
                                ),
                                // Column(
                                //   children: <Widget>[
                                //     Container(
                                //       child: TextField(
                                //         controller: recentThingController,
                                //         maxLength: 14,
                                //         decoration: const InputDecoration(
                                //           counterText: '',
                                //         ),
                                //         style: TextStyle(fontSize: 14),
                                //       ),
                                //       width: 120,
                                //       height: 20,
                                //     ),
                                //   ],
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding:
                      EdgeInsets.only(top: SizeConfig.widgetPaddingSize)),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        maxHeight: SizeConfig.widgetHeightSizeSecond),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorConfig.Orange, width: 6),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: SizeConfig.screenHeight * 0.18,
                      width: SizeConfig.screenWidth * 0.9,
                      padding: EdgeInsets.fromLTRB(
                          SizeConfig.screenWidth * 0.02,
                          0.0,
                          SizeConfig.screenWidth * 0.02,
                          0.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text("休みの日は何してる？",
                                          style: TextStyle(
                                            color: ColorConfig.Black,
                                            fontSize: SizeConfig.middleFontSize,
                                          )),
                                    ),
                                    Container(
                                      width: SizeConfig.screenWidth * 0.8,
                                      height: 20,
                                      child: TextField(
                                        controller: SNS2Controller,
                                        maxLength: 16,
                                        decoration: InputDecoration(
                                          counterText: '',
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: ColorConfig.White),
                                          ),
                                          filled: true,
                                          fillColor: ColorConfig.White,
                                        ),
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                  ])),

                          // Column(
                          //   children: <Widget>[
                          //     Container(
                          //       child: Text("１０億円当たったら？",
                          //           style: TextStyle(
                          //             color: Color(0x860047FA),
                          //             fontSize: 14,
                          //           )),
                          //     ),
                          //     Container(
                          //       child: TextField(
                          //         controller: win1BillionYenController,
                          //         maxLength: 16,
                          //         decoration: const InputDecoration(
                          //           counterText: '',
                          //         ),
                          //         style: TextStyle(fontSize: 14),
                          //       ),
                          //       width: 150,
                          //       height: 20,
                          //     ),
                          //   ],
                          // ),
                          Padding(padding: EdgeInsets.all(3.0)),
                          Container(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text("生まれ変わるなら？",
                                          style: TextStyle(
                                            color: ColorConfig.Black,
                                            fontSize: SizeConfig.middleFontSize,
                                          )),
                                    ),
                                    Container(
                                      width: SizeConfig.screenWidth * 0.8,
                                      height: 20,
                                      child: TextField(

                                        maxLength: 16,
                                        decoration: InputDecoration(
                                          counterText: '',
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: ColorConfig.White),
                                          ),
                                          filled: true,
                                          fillColor: ColorConfig.White,
                                        ),
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                  ])),

                          // Container(
                          //   child: Text("願いが一つ叶ったら？",
                          //       style: TextStyle(
                          //         color: Color(0x860047FA),
                          //         fontSize: 14,
                          //       )),
                          // ),
                          // Container(
                          //   child: TextField(
                          //     controller: wishController,
                          //     maxLength: 16,
                          //     decoration: const InputDecoration(
                          //       counterText: '',
                          //     ),
                          //     style: TextStyle(fontSize: 14),
                          //   ),
                          //   width: 150,
                          //   height: 20,
                          // ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          top: SizeConfig.widgetPaddingSize * 1.5)),
                  Container(
                    padding: EdgeInsets.fromLTRB(SizeConfig.screenWidth * 0.06,
                        0.0, SizeConfig.screenWidth * 0.06, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ConstrainedBox(
                          constraints: BoxConstraints(
                              maxHeight: SizeConfig.widgetHeightSizeThird),
                          child: Container(
                            decoration: BoxDecoration(color: ColorConfig.Cream),
                            width: SizeConfig.screenWidth * 0.4,
                            height: SizeConfig.screenHeight * 0.3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding:
                                  EdgeInsets.fromLTRB(3.0, 3.0, 0.0, 0.0),
                                  child: Text("best",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: SizeConfig.smallFontSize,
                                      )),
                                ),
                                Container(
                                    child: Stack(children: [
                                      Container(
                                          child: Image.asset(
                                              'images/profile002/profile002_best.png')),
                                      Positioned(
                                        top: 8,
                                        left: 5,
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 20,
                                          width: SizeConfig.screenWidth * 0.34,
                                          padding: EdgeInsets.fromLTRB(
                                              3.0, 3.0, 0.0, 0.0),
                                          child: TextField(

                                            textAlign: TextAlign.center,
                                            maxLength: 18,
                                            decoration: InputDecoration(
                                              counterText: '',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: ColorConfig.White),
                                              ),
                                              filled: true,
                                              fillColor: ColorConfig.White,
                                            ),
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ),
                                    ])),
                                Container(
                                  padding:
                                  EdgeInsets.fromLTRB(3.0, 3.0, 0.0, 0.0),
                                  child: Text("No1",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: SizeConfig.smallFontSize,
                                      )),
                                ),
                                Center(
                                  child: Container(
                                    height: 20,
                                    width: SizeConfig.screenWidth * 0.3,
                                    child: TextField(

                                      maxLength: 16,
                                      decoration: InputDecoration(
                                        counterText: '',
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: ColorConfig.White),
                                        ),
                                        filled: true,
                                        fillColor: ColorConfig.White,
                                      ),
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding:
                                  EdgeInsets.fromLTRB(3.0, 3.0, 0.0, 0.0),
                                  child: Text("No2",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: SizeConfig.smallFontSize,
                                      )),
                                ),
                                Center(
                                  child: Container(
                                    height: 20,
                                    width: SizeConfig.screenWidth * 0.3,
                                    child: TextField(

                                      maxLength: 16,
                                      decoration: InputDecoration(
                                        counterText: '',
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: ColorConfig.White),
                                        ),
                                        filled: true,
                                        fillColor: ColorConfig.White,
                                      ),
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding:
                                  EdgeInsets.fromLTRB(3.0, 3.0, 0.0, 0.0),
                                  child: Text("No3",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: SizeConfig.smallFontSize,
                                      )),
                                ),
                                Center(
                                  child: Container(
                                    height: 20,
                                    width: SizeConfig.screenWidth * 0.3,
                                    child: TextField(

                                      maxLength: 16,
                                      decoration: InputDecoration(
                                        counterText: '',
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: ColorConfig.White),
                                        ),
                                        filled: true,
                                        fillColor: ColorConfig.White,
                                      ),
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                              maxHeight: SizeConfig.widgetHeightSizeThird),
                          child: Container(
                            decoration: BoxDecoration(color: ColorConfig.Cream),
                            width: SizeConfig.screenWidth * 0.4,
                            height: SizeConfig.screenHeight * 0.3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding:
                                  EdgeInsets.fromLTRB(3.0, 3.0, 0.0, 0.0),
                                  child: Text("best",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: SizeConfig.smallFontSize,
                                      )),
                                ),
                                Container(
                                    child: Stack(children: [
                                      Container(
                                          child: Image.asset(
                                              'images/profile002/profile002_best.png')),
                                      Positioned(
                                        top: 8,
                                        left: 5,
                                        child: Container(
                                          height: 20,
                                          width: SizeConfig.screenWidth * 0.34,
                                          child: TextField(

                                            textAlign: TextAlign.center,
                                            maxLength: 18,
                                            decoration: InputDecoration(
                                              counterText: '',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: ColorConfig.White),
                                              ),
                                              filled: true,
                                              fillColor: ColorConfig.White,
                                            ),
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      )
                                    ])),
                                Container(
                                  padding:
                                  EdgeInsets.fromLTRB(3.0, 3.0, 0.0, 0.0),
                                  child: Text("No1",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: SizeConfig.smallFontSize,
                                      )),
                                ),
                                Center(
                                  child: Container(
                                    height: 20,
                                    width: SizeConfig.screenWidth * 0.3,
                                    child: TextField(

                                      maxLength: 16,
                                      decoration: InputDecoration(
                                        counterText: '',
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: ColorConfig.White),
                                        ),
                                        filled: true,
                                        fillColor: ColorConfig.White,
                                      ),
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding:
                                  EdgeInsets.fromLTRB(3.0, 3.0, 0.0, 0.0),
                                  child: Text("No2",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: SizeConfig.smallFontSize,
                                      )),
                                ),
                                Center(
                                  child: Container(
                                    height: 20,
                                    width: SizeConfig.screenWidth * 0.3,
                                    child: TextField(

                                      maxLength: 16,
                                      decoration: InputDecoration(
                                        counterText: '',
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: ColorConfig.White),
                                        ),
                                        filled: true,
                                        fillColor: ColorConfig.White,
                                      ),
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding:
                                  EdgeInsets.fromLTRB(3.0, 3.0, 0.0, 0.0),
                                  child: Text("No3",
                                      style: TextStyle(
                                        color: ColorConfig.Black,
                                        fontSize: SizeConfig.smallFontSize,
                                      )),
                                ),
                                Center(
                                  child: Container(
                                    height: 20,
                                    width: SizeConfig.screenWidth * 0.3,
                                    child: TextField(

                                      maxLength: 16,
                                      decoration: InputDecoration(
                                        counterText: '',
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: ColorConfig.White),
                                        ),
                                        filled: true,
                                        fillColor: ColorConfig.White,
                                      ),
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
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
