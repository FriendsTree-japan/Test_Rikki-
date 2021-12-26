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
      widgetHeightSizeFirst = 300.0;
      widgetHeightSizeSecond = 140.0;
      widgetHeightSizeThird = 140.0;
    } else if (screenHeight > 700){
      widgetHeightSizeFirst = 250.0;
      widgetHeightSizeSecond = 126.0;
      widgetHeightSizeThird = 150.0;
    }else {
      widgetHeightSizeFirst = 300.0;
      widgetHeightSizeSecond = 126.0;
      widgetHeightSizeThird = 120.0;
    }

    //各ウィジェット間のPaddingの値を定義
    if (screenHeight > 900) {
      widgetPaddingSize = 26.0;
    } else if (screenHeight > 700) {
      widgetPaddingSize = 20.0;
    } else {
      widgetPaddingSize = 5.0;
    }
  }
}

class ColorConfig {
  static late Color Black;
  static late Color Orange;
  static late Color White;
  static late Color Yellow;
  static late Color Red;
  static late Color GrayWhite;

  void init(BuildContext context) {
    //使用する色を定義

    Black = Color(0xFF595959);
    Orange = Color(0xFFFFC0A3);
    White = Color(0xFFFFFFFF);
    Yellow = Color(0xFFFFF38D);
    Red = Color(0xFFFC5836);
    GrayWhite = Color(0xFFE2E2DF);
  }
}

class profile_001 extends StatefulWidget {
  late int id;
  late final String saveName;
  late final String koshinYmd;
  late final String name;
  late final String birth;
  late final String hobby;
  late final String specialSkill;
  late final String freeTime;
  late final String SNS1;
  late final String SNS2;
  late final String ranking1;
  late final String first1;
  late final String second1;
  late final String third1;
  late final String ranking2;
  late final String first2;
  late final String second2;
  late final String third2;
  late final String freeeSpace;
  late final String myImagePath;
  late final String koshinFlg;

  profile_001.Details(
      this.id,
      this.saveName,
      this.koshinYmd,
      this.name,
      this.birth,
      this.hobby,
      this.specialSkill,
      this.freeTime,
      this.SNS1,
      this.SNS2,
      this.ranking1,
      this.first1,
      this.second1,
      this.third1,
      this.ranking2,
      this.first2,
      this.second2,
      this.third2,
      this.freeeSpace,
      this.myImagePath,
      this.koshinFlg);

  profile_001.make() {
    this.id = 0;
    this.saveName = "";
    this.koshinYmd = "";
    this.name = "";
    this.birth = "";
    this.hobby = "";
    this.specialSkill = "";
    this.freeTime = "";
    this.SNS1 = "";
    this.SNS2 = "";
    this.ranking1 = "";
    this.first1 = "";
    this.second1 = "";
    this.third1 = "";
    this.ranking2 = "";
    this.first2 = "";
    this.second2 = "";
    this.third2 = "";
    this.freeeSpace = "";
    this.myImagePath = "";
    this.koshinFlg = "0";
  }

  @override
  _profile_001 createState() => _profile_001();
}

class _profile_001 extends State<profile_001> {
  var nameController = TextEditingController();
  var birthController = TextEditingController();
  var hobbyController = TextEditingController();
  var specialSkillController = TextEditingController();
  var freeTimeController = TextEditingController();
  var SNS1Controller = TextEditingController();
  var SNS2Controller = TextEditingController();
  var ranking1Controller = TextEditingController();
  var first1Controller = TextEditingController();
  var second1Controller = TextEditingController();
  var third1Controller = TextEditingController();
  var ranking2Controller = TextEditingController();
  var first2Controller = TextEditingController();
  var second2Controller = TextEditingController();
  var third2Controller = TextEditingController();
  var freeeSpaceController = TextEditingController();
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
    this.hobbyController = new TextEditingController(text: widget.hobby);
    this.specialSkillController =
        new TextEditingController(text: widget.specialSkill);
    this.freeTimeController = new TextEditingController(text: widget.freeTime);
    this.SNS1Controller = new TextEditingController(text: widget.SNS1);
    this.SNS2Controller = new TextEditingController(text: widget.SNS2);
    this.ranking1Controller = new TextEditingController(text: widget.ranking1);
    this.first1Controller = new TextEditingController(text: widget.first1);
    this.second1Controller = new TextEditingController(text: widget.second1);
    this.third1Controller = new TextEditingController(text: widget.third1);
    this.ranking2Controller = new TextEditingController(text: widget.ranking2);
    this.first2Controller = new TextEditingController(text: widget.first2);
    this.second2Controller = new TextEditingController(text: widget.second2);
    this.third2Controller = new TextEditingController(text: widget.third2);
    this.freeeSpaceController =
        new TextEditingController(text: widget.freeeSpace);
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
                                    String hobby = hobbyController.text;
                                    String specialSkill =
                                        specialSkillController.text;
                                    String freeTime = freeTimeController.text;
                                    String SNS1 = SNS1Controller.text;
                                    String SNS2 = SNS2Controller.text;
                                    String ranking1 = ranking1Controller.text;
                                    String first1 = first1Controller.text;
                                    String second1 = second1Controller.text;
                                    String third1 = third1Controller.text;
                                    String ranking2 = ranking2Controller.text;
                                    String first2 = first2Controller.text;
                                    String second2 = second2Controller.text;
                                    String third2 = third2Controller.text;
                                    String freeeSpace =
                                        freeeSpaceController.text;
                                    DateTime now = DateTime.now();
                                    DateFormat outputFormat =
                                        DateFormat('yyyy/MM/dd HH:mm');
                                    String date = outputFormat.format(now);
                                    String query =
                                        'INSERT INTO profile001(saveName, koshinYmd, name, birth, hobby, specialSkill, freeTime, SNS1, SNS2, ranking1, first1, second1, third1, ranking2, first2, second2, third2, freeeSpace, myImagePath) '
                                        'VALUES("$saveName", "$date", "$name", "$birth", "$hobby", "$specialSkill", "$freeTime", "$SNS1", "$SNS2", "$ranking1", "$first1", "$second1", "$third1", "$ranking2", "$first2", "$second2", "$third2", "$freeeSpace", "$myImagePath")';

                                    await proDb.saveData001(
                                        saveName,
                                        date,
                                        name,
                                        birth,
                                        hobby,
                                        specialSkill,
                                        freeTime,
                                        SNS1,
                                        SNS2,
                                        ranking1,
                                        first1,
                                        second1,
                                        third1,
                                        ranking2,
                                        first2,
                                        second2,
                                        third2,
                                        freeeSpace,
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
                              String hobby = hobbyController.text;
                              String specialSkill = specialSkillController.text;
                              String freeTime = freeTimeController.text;
                              String SNS1 = SNS1Controller.text;
                              String SNS2 = SNS2Controller.text;
                              String ranking1 = ranking1Controller.text;
                              String first1 = first1Controller.text;
                              String second1 = second1Controller.text;
                              String third1 = third1Controller.text;
                              String ranking2 = ranking2Controller.text;
                              String first2 = first2Controller.text;
                              String second2 = second2Controller.text;
                              String third2 = third2Controller.text;
                              String freeeSpace = freeeSpaceController.text;
                              DateTime now = DateTime.now();
                              DateFormat outputFormat =
                                  DateFormat('yyyy/MM/dd HH:mm');
                              String date = outputFormat.format(now);

                              if (koshinFlg == "1") {
                                ProList plist = new ProList.ProList_001(
                                    id: id,
                                    saveName: saveName,
                                    koshinYmd: date,
                                    name: name,
                                    birth_p001: birth,
                                    hobby_p001: hobby,
                                    specialSkill_p001: specialSkill,
                                    freeTime_p001: freeTime,
                                    SNS1_p001: SNS1,
                                    SNS2_p001: SNS2,
                                    ranking1_p001: ranking1,
                                    first1_p001: first1,
                                    second1_p001: second1,
                                    third1_p001: third1,
                                    ranking2_p001: ranking2,
                                    first2_p001: first2,
                                    second2_p001: second2,
                                    third2_p001: third2,
                                    freeeSpace_p001: freeeSpace,
                                    myImagePath_p001: myImagePath);
                                await proDb.updateData001(plist);
                                Navigator.pop(childContext);
                              } else {
                                saveName =
                                    await profileShow().saveDialog(context);
                                if (saveName != "") {
                                  String query =
                                      'INSERT INTO profile001(saveName, koshinYmd, name, birth, hobby, specialSkill, freeTime, SNS1, SNS2, ranking1, first1, second1, third1, ranking2, first2, second2, third2, freeeSpace, myImagePath) '
                                      'VALUES("$saveName", "$date", "$name", "$birth", "$hobby", "$specialSkill", "$freeTime", "$SNS1", "$SNS2", "$ranking1", "$first1", "$second1", "$third1", "$ranking2", "$first2", "$second2", "$third2", "$freeeSpace", "$myImagePath")';
                                  await proDb.saveData001(
                                      saveName,
                                      date,
                                      name,
                                      birth,
                                      hobby,
                                      specialSkill,
                                      freeTime,
                                      SNS1,
                                      SNS2,
                                      ranking1,
                                      first1,
                                      second1,
                                      third1,
                                      ranking2,
                                      first2,
                                      second2,
                                      third2,
                                      freeeSpace,
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
                    'images/profile001/profile001_background.jpg',
                    fit: BoxFit.cover),
              ),
              Column(
                children: <Widget>[
                  Stack(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.screenWidth * 0.005,
                            SizeConfig.screenWidth * 0.00,
                            SizeConfig.screenWidth * 0.02,
                            0.0),
                        child: Text(
                          "My Profile",
                          style: TextStyle(
                              color: ColorConfig.White,
                              fontFamily: 'Nicofont',
                              fontSize: SizeConfig.bigFontSize
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.screenWidth * 0.02,
                            SizeConfig.screenWidth * 0.0,
                            SizeConfig.screenWidth * 0.02,
                            0.0),
                        child: Text(
                          "My Profile",
                          style: TextStyle(
                              color: ColorConfig.Red,
                              fontFamily: 'Nicofont',
                              fontSize: SizeConfig.bigFontSize),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                      padding:
                          EdgeInsets.only(top: SizeConfig.widgetPaddingSize)),
                  Stack(
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(
                            maxHeight: SizeConfig.widgetHeightSizeFirst),
                        child: Container(
                          decoration: BoxDecoration(
                            color: ColorConfig.Yellow,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: SizeConfig.screenHeight * 0.5,
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
                                    SizeConfig.widgetHeightSizeFirst * 0.95),
                            child: Container(
                              decoration: BoxDecoration(
                                color: ColorConfig.White,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: SizeConfig.screenHeight * 0.48,
                              width: SizeConfig.screenWidth * 0.75,
                              padding: EdgeInsets.fromLTRB(
                                  SizeConfig.screenWidth * 0.02,
                                  0.0,
                                  SizeConfig.screenWidth * 0.02,
                                  0.0),
                              child: Column(children: [
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            child: Text("名前",
                                                style: TextStyle(
                                                    color: ColorConfig.Black,
                                                    fontSize: 12.0))),
                                        Container(
                                          height: 20,
                                          width: SizeConfig.screenWidth * 0.4,
                                          child: TextField(
                                            controller: nameController,
                                            maxLength: 12,
                                            decoration: InputDecoration(
                                              counterText: '',
                                            ),
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                        Padding(
                                            padding:
                                            EdgeInsets.only(top: 10)),
                                        Container(
                                            child: Text("誕生日",
                                                style: TextStyle(
                                                    color: ColorConfig.Black,
                                                    fontSize: 12.0))),
                                        Container(
                                          height: 20,
                                          width: SizeConfig.screenWidth * 0.4,
                                          child: TextField(
                                            controller: birthController,
                                            maxLength: 12,
                                            decoration: InputDecoration(
                                              counterText: '',
                                            ),
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                        Padding(
                                            padding:
                                            EdgeInsets.only(top: 10)),
                                        Container(
                                            child: Text("趣味",
                                                style: TextStyle(
                                                    color: ColorConfig.Black,
                                                    fontSize: 12.0))),
                                        Container(
                                          height: 20,
                                          width: SizeConfig.screenWidth * 0.4,
                                          child: TextField(
                                            controller: hobbyController,
                                            maxLength: 12,
                                            decoration: InputDecoration(
                                              counterText: '',
                                            ),
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                        Padding(
                                            padding:
                                            EdgeInsets.only(top: 10)),
                                        Container(
                                            child: Text("特技",
                                                style: TextStyle(
                                                    color: ColorConfig.Black,
                                                    fontSize: 12.0))),
                                        Container(
                                          height: 20,
                                          width: SizeConfig.screenWidth * 0.4,
                                          child: TextField(
                                            controller: specialSkillController,
                                            maxLength: 12,
                                            decoration: InputDecoration(
                                              counterText: '',
                                            ),
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                        Padding(
                                            padding:
                                            EdgeInsets.only(top: 10)),
                                        Container(
                                            child: Text("暇なときなにしてる？",
                                                style: TextStyle(
                                                    color: ColorConfig.Black,
                                                    fontSize: 12.0))),
                                        Container(
                                          height: 20,
                                          width: SizeConfig.screenWidth * 0.4,
                                          child: TextField(
                                            controller: freeTimeController,
                                            maxLength: 12,
                                            decoration: InputDecoration(
                                              counterText: '',
                                            ),
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                        Padding(
                                            padding:
                                            EdgeInsets.only(top: 10)),
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
                                                child: Row(children: []),
                                              )
                                            ])
                                      ]),
                                  Container(
                                    height: SizeConfig.screenHeight * 0.35,
                                    width: SizeConfig.screenWidth * 0.25,
                                    // color:Colors.red,
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: InkWell(
                                          child: Container(
                                            height: 100,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: ColorConfig.Orange,
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
                                                            myImagePath, "1")));
                                            myImagePath =
                                                await result as String;
                                            setState(() {});
                                          }),
                                    ),
                                  ),
                                ]),
                                Row(children: [
                                  Row(children: [
                                    FaIcon(
                                      FontAwesomeIcons.instagram,
                                      color: ColorConfig.Black,
                                      size: 10,
                                    ),
                                    Container(
                                      height: 20,
                                      width: SizeConfig.screenWidth * 0.3,
                                      child: TextField(
                                        controller: SNS1Controller,
                                        maxLength: 16,
                                        decoration: InputDecoration(
                                          counterText: '',
                                        ),
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ]),
                                  Padding(padding:EdgeInsets.only(left:20.0)),
                                  Row(children: [
                                    FaIcon(
                                      FontAwesomeIcons.twitter,
                                      color: ColorConfig.Black,
                                      size: 10,
                                    ),
                                    Container(
                                      height: 20,
                                      width: SizeConfig.screenWidth * 0.3,
                                      child: TextField(
                                        controller: SNS2Controller,
                                        maxLength: 16,
                                        decoration: InputDecoration(
                                          counterText: '',
                                        ),
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ]),
                                ]),
                              ]),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                      padding:
                          EdgeInsets.only(top: SizeConfig.widgetPaddingSize)),
                  Container(
                      child: Column(children: [
                    Container(
                      child: Text(
                        "Ranking",
                        style: TextStyle(
                            color: ColorConfig.Red,
                            fontFamily: 'Nicofont',
                            fontSize: 24),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            top: SizeConfig.widgetPaddingSize * 0.5)),
                    Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.screenWidth * 0.1,
                            0.0,
                            SizeConfig.screenWidth * 0.1,
                            0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 20,
                                  width: SizeConfig.screenWidth * 0.3,
                                  child: TextField(
                                    controller: ranking1Controller,
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
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                ),
                                Row(children: [
                                  Container(
                                      child: Text("1.",
                                          style: TextStyle(
                                              color: ColorConfig.Black,
                                              fontSize: 12.0))),
                                  Container(
                                    height: 20,
                                    width: SizeConfig.screenWidth * 0.3,
                                    child: TextField(
                                      controller: first1Controller,
                                      maxLength: 16,
                                      decoration: InputDecoration(
                                        counterText: '',
                                        // enabledBorder: OutlineInputBorder(
                                        //   borderSide:
                                        //   BorderSide(color: ColorConfig.Yellow),
                                        // ),
                                      ),
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ]),
                                Padding(
                                  padding: EdgeInsets.only(top: 6),
                                ),
                                Row(children: [
                                  Container(
                                      child: Text("2.",
                                          style: TextStyle(
                                              color: ColorConfig.Black,
                                              fontSize: 12.0))),
                                  Container(
                                    height: 20,
                                    width: SizeConfig.screenWidth * 0.3,
                                    child: TextField(
                                      controller: second1Controller,
                                      maxLength: 16,
                                      decoration: InputDecoration(
                                        counterText: '',
                                        // enabledBorder: OutlineInputBorder(
                                        //   borderSide:
                                        //   BorderSide(color: ColorConfig.Yellow),
                                        // ),
                                      ),
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ]),
                                Padding(
                                  padding: EdgeInsets.only(top: 6),
                                ),
                                Row(children: [
                                  Container(
                                      child: Text("3.",
                                          style: TextStyle(
                                              color: ColorConfig.Black,
                                              fontSize: 12.0))),
                                  Container(
                                    height: 20,
                                    width: SizeConfig.screenWidth * 0.3,
                                    child: TextField(
                                      controller: third1Controller,
                                      maxLength: 16,
                                      decoration: InputDecoration(
                                        counterText: '',
                                        // enabledBorder: OutlineInputBorder(
                                        //   borderSide:
                                        //   BorderSide(color: ColorConfig.Yellow),
                                        // ),
                                      ),
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ]),
                              ],
                            ),
                            Column(children: [
                              Container(
                                height: 20,
                                width: SizeConfig.screenWidth * 0.3,
                                child: TextField(
                                  controller: ranking2Controller,
                                  maxLength: 16,
                                  decoration: InputDecoration(
                                    counterText: '',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: ColorConfig.White),
                                    ),
                                    filled: true,
                                    fillColor: ColorConfig.White,
                                  ),
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                              ),
                              Row(children: [
                                Container(
                                    child: Text("1.",
                                        style: TextStyle(
                                            color: ColorConfig.Black,
                                            fontSize: 12.0))),
                                Container(
                                  height: 20,
                                  width: SizeConfig.screenWidth * 0.3,
                                  child: TextField(
                                    controller: first2Controller,
                                    maxLength: 16,
                                    decoration: InputDecoration(
                                      counterText: '',
                                      // enabledBorder: OutlineInputBorder(
                                      //   borderSide:
                                      //   BorderSide(color: ColorConfig.Yellow),
                                      // ),
                                    ),
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ]),
                              Padding(
                                padding: EdgeInsets.only(top: 6),
                              ),
                              Row(children: [
                                Container(
                                    child: Text("2.",
                                        style: TextStyle(
                                            color: ColorConfig.Black,
                                            fontSize: 12.0))),
                                Container(
                                  height: 20,
                                  width: SizeConfig.screenWidth * 0.3,
                                  child: TextField(
                                    controller: second2Controller,
                                    maxLength: 16,
                                    decoration: InputDecoration(
                                      counterText: '',
                                      // enabledBorder: OutlineInputBorder(
                                      //   borderSide:
                                      //   BorderSide(color: ColorConfig.Yellow),
                                      // ),
                                    ),
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ]),
                              Padding(
                                padding: EdgeInsets.only(top: 6),
                              ),
                              Row(children: [
                                Container(
                                    child: Text("3.",
                                        style: TextStyle(
                                            color : ColorConfig.Black,
                                            fontSize: 12.0))),
                                Container(
                                  height: 20,
                                  width: SizeConfig.screenWidth * 0.3,
                                  child: TextField(
                                    controller: third2Controller,
                                    maxLength: 16,
                                    decoration: InputDecoration(
                                      counterText: '',
                                      // enabledBorder: OutlineInputBorder(
                                      //   borderSide:
                                      //   BorderSide(color: ColorConfig.Yellow),
                                      // ),
                                    ),
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ]),
                            ]),
                          ],
                        )),
                  ])),
                  Padding(
                      padding:
                          EdgeInsets.only(top: SizeConfig.widgetPaddingSize)),
                  Container(
                    child: Stack(children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(
                            maxHeight: SizeConfig.screenHeight * 0.2,),
                        child: Container(
                          height: SizeConfig.screenHeight * 0.15,
                          width: SizeConfig.screenWidth * 0.8,
                          decoration: BoxDecoration(
                            color: ColorConfig.White,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(children: [
                            Container(
                              height: 26,
                              child: Text(
                                "Free Space",
                                style: TextStyle(
                                    color: ColorConfig.Red,
                                    fontFamily: 'Nicofont',
                                    fontSize: 24),
                              ),
                            ),
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxHeight: SizeConfig.widgetHeightSizeThird),
                              child: Container(
                                height: SizeConfig.screenHeight * 0.1,
                                width: SizeConfig.screenWidth * 0.6,
                                child: TextField(
                                  controller: freeeSpaceController,
                                  keyboardType: TextInputType.multiline,
                                  maxLines: 3,
                                  maxLength: 48,
                                  decoration: InputDecoration(
                                    counterText: '',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: ColorConfig.White),
                                    ),
                                    filled: true,
                                    alignLabelWithHint: true,
                                    fillColor: ColorConfig.White,
                                  ),
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            )
                          ]),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
              // Padding(padding: EdgeInsets.only(top: SizeConfig.widgetPaddingSize),),
            ]),
          ),
        ),
      ),
    );
  }
}
