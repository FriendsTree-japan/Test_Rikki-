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
  static late Color GrayWhite;

  void init(BuildContext context) {
    //使用する色を定義
    Black = Color(0xFF737373);
    Orange = Color(0xFFFFC0A3);
    White = Color(0xFFFFFFFF);
    Cream = Color(0xFFFAF7F3);
    GrayWhite = Color(0xFFE2E2DF);
  }
}

class profile_005 extends StatefulWidget {
  late int id;
  late final String saveName;
  late final String koshinYmd;
  late final String name;
  late final String nickName;
  late final String birthYYYY;
  late final String birthMM;
  late final String birthDD;
  late final String personality;
  late final String skill;
  late final String myBoom;
  late final String recentThing;
  late final String offDay;
  late final String win1BillionYen;
  late final String reborn;
  late final String wish;
  late final String myBestTheme1;
  late final String teme1MyBest1;
  late final String teme1MyBest2;
  late final String teme1MyBest3;
  late final String myBestTheme2;
  late final String teme2MyBest1;
  late final String teme2MyBest2;
  late final String teme2MyBest3;
  late final String koshinFlg;

  profile_005.Details(
      this.id,
      this.saveName,
      this.koshinYmd,
      this.name,
      this.nickName,
      this.birthYYYY,
      this.birthMM,
      this.birthDD,
      this.personality,
      this.skill,
      this.myBoom,
      this.recentThing,
      this.offDay,
      this.win1BillionYen,
      this.reborn,
      this.wish,
      this.myBestTheme1,
      this.teme1MyBest1,
      this.teme1MyBest2,
      this.teme1MyBest3,
      this.myBestTheme2,
      this.teme2MyBest1,
      this.teme2MyBest2,
      this.teme2MyBest3,
      this.koshinFlg);

  profile_005.make() {
    this.id = 0;
    this.saveName = "";
    this.koshinYmd = "";
    this.name = "";
    this.nickName = "";
    this.birthYYYY = "";
    this.birthMM = "";
    this.birthDD = "";
    this.personality = "";
    this.skill = "";
    this.myBoom = "";
    this.recentThing = "";
    this.offDay = "";
    this.win1BillionYen = "";
    this.reborn = "";
    this.wish = "";
    this.myBestTheme1 = "";
    this.teme1MyBest1 = "";
    this.teme1MyBest2 = "";
    this.teme1MyBest3 = "";
    this.myBestTheme2 = "";
    this.teme2MyBest1 = "";
    this.teme2MyBest2 = "";
    this.teme2MyBest3 = "";
    this.koshinFlg = "0";
  }

  @override
  _profile_005 createState() => _profile_005();
}

class _profile_005 extends State<profile_005> {
  var nameController = TextEditingController();
  var nickNameController = TextEditingController();
  var birthYYYYController = TextEditingController();
  var birthMMController = TextEditingController();
  var birthDDController = TextEditingController();
  var personalityController = TextEditingController();
  var skillController = TextEditingController();
  var myBoomController = TextEditingController();
  var recentThingController = TextEditingController();
  var offDayController = TextEditingController();
  var win1BillionYenController = TextEditingController();
  var rebornController = TextEditingController();
  var wishController = TextEditingController();
  var myBestTheme1Controller = TextEditingController();
  var teme1MyBest1Controller = TextEditingController();
  var teme1MyBest2Controller = TextEditingController();
  var teme1MyBest3Controller = TextEditingController();
  var myBestTheme2Controller = TextEditingController();
  var teme2MyBest1Controller = TextEditingController();
  var teme2MyBest2Controller = TextEditingController();
  var teme2MyBest3Controller = TextEditingController();
  late int id;
  late String koshinFlg;
  late String saveName;
  late String profileTitle;

  //前情報保持
  late String nameZen;
  late String nickNameZen;
  late String birthYYYYZen;
  late String birthMMZen;
  late String birthDDZen;
  late String personalityZen;
  late String skillZen;
  late String myBoomZen;
  late String recentThingZen;
  late String offDayZen;
  late String win1BillionYenZen;
  late String rebornZen;
  late String wishZen;
  late String myBestTheme1Zen;
  late String teme1MyBest1Zen;
  late String teme1MyBest2Zen;
  late String teme1MyBest3Zen;
  late String myBestTheme2Zen;
  late String teme2MyBest1Zen;
  late String teme2MyBest2Zen;
  late String teme2MyBest3Zen;

  void initState() {
    super.initState();
    this.saveName = widget.saveName;
    this.nameController = new TextEditingController(text: widget.name);
    this.nickNameController = new TextEditingController(text: widget.nickName);
    this.birthYYYYController =
        new TextEditingController(text: widget.birthYYYY);
    this.birthMMController = new TextEditingController(text: widget.birthMM);
    this.birthDDController = new TextEditingController(text: widget.birthDD);
    this.personalityController =
        new TextEditingController(text: widget.personality);
    this.skillController = new TextEditingController(text: widget.skill);
    this.myBoomController = new TextEditingController(text: widget.myBoom);
    this.recentThingController =
        new TextEditingController(text: widget.recentThing);
    this.offDayController = new TextEditingController(text: widget.offDay);
    this.win1BillionYenController =
        new TextEditingController(text: widget.win1BillionYen);
    this.rebornController = new TextEditingController(text: widget.reborn);
    this.wishController = new TextEditingController(text: widget.wish);
    this.myBestTheme1Controller =
        new TextEditingController(text: widget.myBestTheme1);
    this.teme1MyBest1Controller =
        new TextEditingController(text: widget.teme1MyBest1);
    this.teme1MyBest2Controller =
        new TextEditingController(text: widget.teme1MyBest2);
    this.teme1MyBest3Controller =
        new TextEditingController(text: widget.teme1MyBest3);
    this.myBestTheme2Controller =
        new TextEditingController(text: widget.myBestTheme2);
    this.teme2MyBest1Controller =
        new TextEditingController(text: widget.teme2MyBest1);
    this.teme2MyBest2Controller =
        new TextEditingController(text: widget.teme2MyBest2);
    this.teme2MyBest3Controller =
        new TextEditingController(text: widget.teme2MyBest3);
    this.id = widget.id;
    this.koshinFlg = widget.koshinFlg;
    if (koshinFlg == "1") {
      this.profileTitle = "更新画面";
    } else {
      this.profileTitle = "新規作成画面";
    }
    this.nameZen = widget.name;
    this.nickNameZen = widget.nickName;
    this.birthYYYYZen = widget.birthYYYY;
    this.birthMMZen = widget.birthMM;
    this.birthDDZen = widget.birthDD;
    this.personalityZen = widget.personality;
    this.skillZen = widget.skill;
    this.myBoomZen = widget.myBoom;
    this.recentThingZen = widget.recentThing;
    this.offDayZen = widget.offDay;
    this.win1BillionYenZen = widget.win1BillionYen;
    this.rebornZen = widget.reborn;
    this.wishZen = widget.wish;
    this.myBestTheme1Zen = widget.myBestTheme1;
    this.teme1MyBest1Zen = widget.teme1MyBest1;
    this.teme1MyBest2Zen = widget.teme1MyBest2;
    this.teme1MyBest3Zen = widget.teme1MyBest3;
    this.myBestTheme2Zen = widget.myBestTheme2;
    this.teme2MyBest1Zen = widget.teme2MyBest1;
    this.teme2MyBest2Zen = widget.teme2MyBest2;
    this.teme2MyBest3Zen = widget.teme2MyBest3;
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
                  String name = nameController.text;
                  String nickName = nickNameController.text;
                  String birthYYYY = birthYYYYController.text;
                  String birthMM = birthMMController.text;
                  String birthDD = birthDDController.text;
                  String personality = personalityController.text;
                  String skill = skillController.text;
                  String myBoom = myBoomController.text;
                  String recentThing = recentThingController.text;
                  String offDay = offDayController.text;
                  String win1BillionYen = win1BillionYenController.text;
                  String reborn = rebornController.text;
                  String wish = wishController.text;
                  String myBestTheme1 = myBestTheme1Controller.text;
                  String teme1MyBest1 = teme1MyBest1Controller.text;
                  String teme1MyBest2 = teme1MyBest2Controller.text;
                  String teme1MyBest3 = teme1MyBest3Controller.text;
                  String myBestTheme2 = myBestTheme2Controller.text;
                  String teme2MyBest1 = teme2MyBest1Controller.text;
                  String teme2MyBest2 = teme2MyBest2Controller.text;
                  String teme2MyBest3 = teme2MyBest3Controller.text;

                  if (koshinFlg == "1") {
                    if (name == nameZen &&
                        nickName == nickNameZen &&
                        birthYYYY == birthYYYYZen &&
                        birthMM == birthMMZen &&
                        birthDD == birthDDZen &&
                        personality == personalityZen &&
                        skill == skillZen &&
                        myBoom == myBoomZen &&
                        recentThing == recentThingZen &&
                        offDay == offDayZen &&
                        win1BillionYen == win1BillionYenZen &&
                        reborn == rebornZen &&
                        wish == wishZen &&
                        myBestTheme1 == myBestTheme1Zen &&
                        teme1MyBest1 == teme1MyBest1Zen &&
                        teme1MyBest2 == teme1MyBest2Zen &&
                        teme1MyBest3 == teme1MyBest3Zen &&
                        myBestTheme2 == myBestTheme2Zen &&
                        teme2MyBest1 == teme2MyBest1Zen &&
                        teme2MyBest2 == teme2MyBest2Zen &&
                        teme2MyBest3 == teme2MyBest3Zen) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => TabPage(1)));
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('プロフィールが更新されています。変更内容を保存しますか？'),
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
                                            builder: (context) => TabPage(1)));
                                  },
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.green,
                                      onPrimary: Colors.white),
                                  onPressed: () async {
                                    profileDb proDb = new profileDb();
                                    DateTime now = DateTime.now();
                                    DateFormat outputFormat =
                                        DateFormat('yyyy/MM/dd HH:mm');
                                    String date = outputFormat.format(now);
                                    ProList plist = new ProList.ProList_005(
                                        id: id,
                                        saveName: saveName,
                                        koshinYmd: date,
                                        name: name,
                                        nickName_p005: nickName,
                                        birthYYYY_p005: birthYYYY,
                                        birthMM_p005: birthMM,
                                        birthDD_p005: birthDD,
                                        personality_p005: personality,
                                        skill_p005: skill,
                                        myBoom_p005: myBoom,
                                        recentThing_p005: recentThing,
                                        offDay_p005: offDay,
                                        win1BillionYen_p005: win1BillionYen,
                                        reborn_p005: reborn,
                                        wish_p005: wish,
                                        myBestTheme1_p005: myBestTheme1,
                                        teme1MyBest1_p005: teme1MyBest1,
                                        teme1MyBest2_p005: teme1MyBest2,
                                        teme1MyBest3_p005: teme1MyBest3,
                                        myBestTheme2_p005: myBestTheme2,
                                        teme2MyBest1_p005: teme2MyBest1,
                                        teme2MyBest2_p005: teme2MyBest2,
                                        teme2MyBest3_p005: teme2MyBest3);
                                    await proDb.updateData005(plist);
                                    Navigator.pop(context);

                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => TabPage(1)));
                                  },
                                  child: Text('はい'),
                                ),
                              ],
                            );
                          });
                    }
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
                                    DateTime now = DateTime.now();
                                    DateFormat outputFormat =
                                        DateFormat('yyyy/MM/dd HH:mm');
                                    String date = outputFormat.format(now);
                                    String query =
                                        'INSERT INTO profile002(saveName, koshinYmd, name, nickName, birthYYYY, birthMM, birthDD, personality, skill, myBoom, recentThing, offDay, win1BillionYen, reborn, wish, myBestTheme1, teme1MyBest1, teme1MyBest2, teme1MyBest3, myBestTheme2, teme2MyBest1, teme2MyBest2, teme2MyBest3) '
                                        'VALUES("$saveName", "$date", "$name", "$nickName", "$birthYYYY", "$birthMM", "$birthDD", "$personality", "$skill", "$myBoom", "$recentThing", "$offDay", "$win1BillionYen", "$reborn", "$wish", "$myBestTheme1", "$teme1MyBest1", "$teme1MyBest2", "$teme1MyBest3", "$myBestTheme2", "$teme2MyBest1", "$teme2MyBest2", "$teme2MyBest3")';

                                    await proDb.saveData005(
                                        saveName,
                                        date,
                                        name,
                                        nickName,
                                        birthYYYY,
                                        birthMM,
                                        birthDD,
                                        personality,
                                        skill,
                                        myBoom,
                                        recentThing,
                                        offDay,
                                        win1BillionYen,
                                        reborn,
                                        wish,
                                        myBestTheme1,
                                        teme1MyBest1,
                                        teme1MyBest2,
                                        teme1MyBest3,
                                        myBestTheme2,
                                        teme2MyBest1,
                                        teme2MyBest2,
                                        teme2MyBest3,
                                        query);
                                    koshinFlg = "1";
                                  }
                                  Navigator.pop(context);
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => TabPage(1)));
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
                              String nickName = nickNameController.text;
                              String birthYYYY = birthYYYYController.text;
                              String birthMM = birthMMController.text;
                              String birthDD = birthDDController.text;
                              String personality = personalityController.text;
                              String skill = skillController.text;
                              String myBoom = myBoomController.text;
                              String recentThing = recentThingController.text;
                              String offDay = offDayController.text;
                              String win1BillionYen =
                                  win1BillionYenController.text;
                              String reborn = rebornController.text;
                              String wish = wishController.text;
                              String myBestTheme1 = myBestTheme1Controller.text;
                              String teme1MyBest1 = teme1MyBest1Controller.text;
                              String teme1MyBest2 = teme1MyBest2Controller.text;
                              String teme1MyBest3 = teme1MyBest3Controller.text;
                              String myBestTheme2 = myBestTheme2Controller.text;
                              String teme2MyBest1 = teme2MyBest1Controller.text;
                              String teme2MyBest2 = teme2MyBest2Controller.text;
                              String teme2MyBest3 = teme2MyBest3Controller.text;
                              DateTime now = DateTime.now();
                              DateFormat outputFormat =
                                  DateFormat('yyyy/MM/dd HH:mm');
                              String date = outputFormat.format(now);

                              if (koshinFlg == "1") {
                                ProList plist = new ProList.ProList_005(
                                    id: id,
                                    saveName: saveName,
                                    koshinYmd: date,
                                    name: name,
                                    nickName_p005: nickName,
                                    birthYYYY_p005: birthYYYY,
                                    birthMM_p005: birthMM,
                                    birthDD_p005: birthDD,
                                    personality_p005: personality,
                                    skill_p005: skill,
                                    myBoom_p005: myBoom,
                                    recentThing_p005: recentThing,
                                    offDay_p005: offDay,
                                    win1BillionYen_p005: win1BillionYen,
                                    reborn_p005: reborn,
                                    wish_p005: wish,
                                    myBestTheme1_p005: myBestTheme1,
                                    teme1MyBest1_p005: teme1MyBest1,
                                    teme1MyBest2_p005: teme1MyBest2,
                                    teme1MyBest3_p005: teme1MyBest3,
                                    myBestTheme2_p005: myBestTheme2,
                                    teme2MyBest1_p005: teme2MyBest1,
                                    teme2MyBest2_p005: teme2MyBest2,
                                    teme2MyBest3_p005: teme2MyBest3);
                                await proDb.updateData005(plist);
                                this.nameZen = name;
                                this.nickNameZen = nickName;
                                this.birthYYYYZen = birthYYYY;
                                this.birthMMZen = birthMM;
                                this.birthDDZen = birthDD;
                                this.personalityZen = personality;
                                this.skillZen = skill;
                                this.myBoomZen = myBoom;
                                this.recentThingZen = recentThing;
                                this.offDayZen = offDay;
                                this.win1BillionYenZen = win1BillionYen;
                                this.rebornZen = reborn;
                                this.wishZen = wish;
                                this.myBestTheme1Zen = myBestTheme1;
                                this.teme1MyBest1Zen = teme1MyBest1;
                                this.teme1MyBest2Zen = teme1MyBest2;
                                this.teme1MyBest3Zen = teme1MyBest3;
                                this.myBestTheme2Zen = myBestTheme2;
                                this.teme2MyBest1Zen = teme2MyBest1;
                                this.teme2MyBest2Zen = teme2MyBest2;
                                this.teme2MyBest3Zen = teme2MyBest3;

                                Navigator.pop(childContext);
                              } else {
                                saveName =
                                    await profileShow().saveDialog(context);
                                if (saveName != "") {
                                  String query =
                                      'INSERT INTO profile002(saveName, koshinYmd, name, nickName, birthYYYY, birthMM, birthDD, personality, skill, myBoom, recentThing, offDay, win1BillionYen, reborn, wish, myBestTheme1, teme1MyBest1, teme1MyBest2, teme1MyBest3, myBestTheme2, teme2MyBest1, teme2MyBest2, teme2MyBest3) '
                                      'VALUES("$saveName", "$date", "$name", "$nickName", "$birthYYYY", "$birthMM", "$birthDD", "$personality", "$skill", "$myBoom", "$recentThing", "$offDay", "$win1BillionYen", "$reborn", "$wish", "$myBestTheme1", "$teme1MyBest1", "$teme1MyBest2", "$teme1MyBest3", "$myBestTheme2", "$teme2MyBest1", "$teme2MyBest2", "$teme2MyBest3")';

                                  await proDb.saveData005(
                                      saveName,
                                      date,
                                      name,
                                      nickName,
                                      birthYYYY,
                                      birthMM,
                                      birthDD,
                                      personality,
                                      skill,
                                      myBoom,
                                      recentThing,
                                      offDay,
                                      win1BillionYen,
                                      reborn,
                                      wish,
                                      myBestTheme1,
                                      teme1MyBest1,
                                      teme1MyBest2,
                                      teme1MyBest3,
                                      myBestTheme2,
                                      teme2MyBest1,
                                      teme2MyBest2,
                                      teme2MyBest3,
                                      query);
                                  koshinFlg = "1";
                                }
                                this.nameZen = name;
                                this.nickNameZen = nickName;
                                this.birthYYYYZen = birthYYYY;
                                this.birthMMZen = birthMM;
                                this.birthDDZen = birthDD;
                                this.personalityZen = personality;
                                this.skillZen = skill;
                                this.myBoomZen = myBoom;
                                this.recentThingZen = recentThing;
                                this.offDayZen = offDay;
                                this.win1BillionYenZen = win1BillionYen;
                                this.rebornZen = reborn;
                                this.wishZen = wish;
                                this.myBestTheme1Zen = myBestTheme1;
                                this.teme1MyBest1Zen = teme1MyBest1;
                                this.teme1MyBest2Zen = teme1MyBest2;
                                this.teme1MyBest3Zen = teme1MyBest3;
                                this.myBestTheme2Zen = myBestTheme2;
                                this.teme2MyBest1Zen = teme2MyBest1;
                                this.teme2MyBest2Zen = teme2MyBest2;
                                this.teme2MyBest3Zen = teme2MyBest3;
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
                        padding: EdgeInsets.only(
                            top: SizeConfig.widgetPaddingSize * 1.3),
                        child: Text(
                          "My Profile",
                          style: TextStyle(
                            color: ColorConfig.Orange,
                            fontFamily: 'Nicofont',
                            fontSize: SizeConfig.bigFontSize,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(3.0, 3.0),
                                blurRadius: 2.0,
                                color: ColorConfig.White,
                              ),
                            ],
                          ),
                        )),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(
                          0.0,
                          SizeConfig.screenHeight * 0.01,
                          0.0,
                          SizeConfig.screenHeight * 0.01)),
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
                                  width: SizeConfig.screenWidth * 0.35,
                                  padding:
                                      EdgeInsets.fromLTRB(1.5, 0.0, 1.5, 0.0),
                                  child: TextField(
                                    controller: nameController,
                                    maxLength: 6,
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
                                      width: SizeConfig.screenWidth * 0.52,
                                      padding: EdgeInsets.fromLTRB(
                                          1.5, 0.0, 1.5, 0.0),
                                      child: TextField(
                                        controller: nickNameController,
                                        maxLength: 11,
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
                                      width: SizeConfig.screenWidth * 0.16,
                                      height: 20,
                                      child: TextField(
                                        controller: birthYYYYController,
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
                                    controller: birthMMController,
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
                                    controller: birthDDController,
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
                                  width: SizeConfig.screenWidth * 0.73,
                                  height: 20,
                                  child: TextField(
                                    controller: personalityController,
                                    maxLength: 17,
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
                                    controller: skillController,
                                    maxLength: 10,
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
                                  width: SizeConfig.screenWidth * 0.6,
                                  height: 20,
                                  child: TextField(
                                    controller: myBoomController,
                                    maxLength: 14,
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
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          top: SizeConfig.widgetPaddingSize * 1.8)),
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
                                    controller: offDayController,
                                    maxLength: 19,
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
                                    controller: rebornController,
                                    maxLength: 19,
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
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          top: SizeConfig.widgetPaddingSize * 1.8)),
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
                                      child: TextField(
                                        controller: myBestTheme1Controller,
                                        textAlign: TextAlign.center,
                                        maxLength: 7,
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
                                    width: SizeConfig.screenWidth * 0.34,
                                    child: TextField(
                                      controller: teme1MyBest1Controller,
                                      maxLength: 8,
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
                                    width: SizeConfig.screenWidth * 0.34,
                                    child: TextField(
                                      controller: teme1MyBest2Controller,
                                      maxLength: 8,
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
                                    width: SizeConfig.screenWidth * 0.34,
                                    child: TextField(
                                      controller: teme1MyBest3Controller,
                                      maxLength: 8,
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
                                        controller: myBestTheme2Controller,
                                        textAlign: TextAlign.center,
                                        maxLength: 7,
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
                                    width: SizeConfig.screenWidth * 0.34,
                                    child: TextField(
                                      controller: teme2MyBest1Controller,
                                      maxLength: 8,
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
                                    width: SizeConfig.screenWidth * 0.34,
                                    child: TextField(
                                      controller: teme2MyBest2Controller,
                                      maxLength: 8,
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
                                    width: SizeConfig.screenWidth * 0.34,
                                    child: TextField(
                                      controller: teme2MyBest3Controller,
                                      maxLength: 8,
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
