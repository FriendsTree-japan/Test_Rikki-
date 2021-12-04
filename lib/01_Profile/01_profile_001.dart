import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import '../main.dart';
import '../00_Page/00_select.dart';
import '../02_DateBase/common/02_profile_db.dart';
import '../00_Page/00_edit.dart';
import '../99_Others/99_create_image.dart';
import '../02_DateBase/common/02_profile_show.dart';
import 'package:intl/intl.dart';

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
    if(screenHeight > 900){
      widgetHeightSizeFirst = 250.0;
      widgetHeightSizeSecond = 140.0;
      widgetHeightSizeThird = 200.0;
    }else {
      widgetHeightSizeFirst = 200.0;
      widgetHeightSizeSecond = 126.0;
      widgetHeightSizeThird = 180.0;
    }

    //各ウィジェット間のPaddingの値を定義
    if(screenHeight > 900) {
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

class profile_103 extends StatefulWidget {
  // late int id;
  // late final String saveName;
  // late final String koshinYmd;
  // late final String name;
  // late final String nickName;
  // late final String birthYYYY;
  // late final String birthMM;
  // late final String birthDD;
  // late final String personality;
  // late final String skill;
  // late final String myBoom;
  // late final String recentThing;
  // late final String offDay;
  // late final String win1BillionYen;
  // late final String reborn;
  // late final String wish;
  // late final String myBestTheme1;
  // late final String teme1MyBest1;
  // late final String teme1MyBest2;
  // late final String teme1MyBest3;
  // late final String myBestTheme2;
  // late final String teme2MyBest1;
  // late final String teme2MyBest2;
  // late final String teme2MyBest3;
  // late final String koshinFlg;
  //
  // profile_005.Details(
  //     this.id,
  //     this.saveName,
  //     this.koshinYmd,
  //     this.name,
  //     this.nickName,
  //     this.birthYYYY,
  //     this.birthMM,
  //     this.birthDD,
  //     this.personality,
  //     this.skill,
  //     this.myBoom,
  //     this.recentThing,
  //     this.offDay,
  //     this.win1BillionYen,
  //     this.reborn,
  //     this.wish,
  //     this.myBestTheme1,
  //     this.teme1MyBest1,
  //     this.teme1MyBest2,
  //     this.teme1MyBest3,
  //     this.myBestTheme2,
  //     this.teme2MyBest1,
  //     this.teme2MyBest2,
  //     this.teme2MyBest3,
  //     this.koshinFlg);
  //
  // profile_005.make() {
  //   this.id = 0;
  //   this.saveName = "";
  //   this.koshinYmd = "";
  //   this.name = "";
  //   this.nickName = "";
  //   this.birthYYYY = "";
  //   this.birthMM = "";
  //   this.birthDD = "";
  //   this.personality = "";
  //   this.skill = "";
  //   this.myBoom = "";
  //   this.recentThing = "";
  //   this.offDay = "";
  //   this.win1BillionYen = "";
  //   this.reborn = "";
  //   this.wish = "";
  //   this.myBestTheme1 = "";
  //   this.teme1MyBest1 = "";
  //   this.teme1MyBest2 = "";
  //   this.teme1MyBest3 = "";
  //   this.myBestTheme2 = "";
  //   this.teme2MyBest1 = "";
  //   this.teme2MyBest2 = "";
  //   this.teme2MyBest3 = "";
  //   this.koshinFlg = "0";
  // }

  @override
  _profile_103 createState() => _profile_103();
}

class _profile_103 extends State<profile_103> {
  // var nameController = TextEditingController();
  // var nickNameController = TextEditingController();
  // var birthYYYYController = TextEditingController();
  // var birthMMController = TextEditingController();
  // var birthDDController = TextEditingController();
  // var personalityController = TextEditingController();
  // var skillController = TextEditingController();
  // var myBoomController = TextEditingController();
  // var recentThingController = TextEditingController();
  // var offDayController = TextEditingController();
  // var win1BillionYenController = TextEditingController();
  // var rebornController = TextEditingController();
  // var wishController = TextEditingController();
  // var myBestTheme1Controller = TextEditingController();
  // var teme1MyBest1Controller = TextEditingController();
  // var teme1MyBest2Controller = TextEditingController();
  // var teme1MyBest3Controller = TextEditingController();
  // var myBestTheme2Controller = TextEditingController();
  // var teme2MyBest1Controller = TextEditingController();
  // var teme2MyBest2Controller = TextEditingController();
  // var teme2MyBest3Controller = TextEditingController();
  // late int id;
  // late String koshinFlg;
  // late String saveName;
  // late String profileTitle;
  //
  // void initState() {
  //   super.initState();
  //   this.saveName = widget.saveName;
  //   this.nameController = new TextEditingController(text: widget.name);
  //   this.nickNameController = new TextEditingController(text: widget.nickName);
  //   this.birthYYYYController =
  //   new TextEditingController(text: widget.birthYYYY);
  //   this.birthMMController = new TextEditingController(text: widget.birthMM);
  //   this.birthDDController = new TextEditingController(text: widget.birthDD);
  //   this.personalityController =
  //   new TextEditingController(text: widget.personality);
  //   this.skillController = new TextEditingController(text: widget.skill);
  //   this.myBoomController = new TextEditingController(text: widget.myBoom);
  //   this.recentThingController =
  //   new TextEditingController(text: widget.recentThing);
  //   this.offDayController = new TextEditingController(text: widget.offDay);
  //   this.win1BillionYenController =
  //   new TextEditingController(text: widget.win1BillionYen);
  //   this.rebornController = new TextEditingController(text: widget.reborn);
  //   this.wishController = new TextEditingController(text: widget.wish);
  //   this.myBestTheme1Controller =
  //   new TextEditingController(text: widget.myBestTheme1);
  //   this.teme1MyBest1Controller =
  //   new TextEditingController(text: widget.teme1MyBest1);
  //   this.teme1MyBest2Controller =
  //   new TextEditingController(text: widget.teme1MyBest2);
  //   this.teme1MyBest3Controller =
  //   new TextEditingController(text: widget.teme1MyBest3);
  //   this.myBestTheme2Controller =
  //   new TextEditingController(text: widget.myBestTheme2);
  //   this.teme2MyBest1Controller =
  //   new TextEditingController(text: widget.teme2MyBest1);
  //   this.teme2MyBest2Controller =
  //   new TextEditingController(text: widget.teme2MyBest2);
  //   this.teme2MyBest3Controller =
  //   new TextEditingController(text: widget.teme2MyBest3);
  //   this.id = widget.id;
  //   this.koshinFlg = widget.koshinFlg;
  //   if (koshinFlg == "1") {
  //     this.profileTitle = "更新画面";
  //   } else {
  //     this.profileTitle = "新規作成画面";
  //   }
  // }

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
            title: Text('新規作成画面',
                style: TextStyle(
                  color: ColorConfig.Black,
                  fontSize: 18,
                )),),
            //戻るボタン
            // // leading: new IconButton(
            // //     icon: new Icon(Icons.arrow_back, color: ColorConfig.Black),
            // //     onPressed: () {
            // //       if (koshinFlg == "1") {
            // //         Navigator.pushReplacement(context,
            // //             MaterialPageRoute(builder: (context) => TabPage(1)));
            // //       } else {
            // //         showDialog(
            // //             context: context,
            // //             builder: (context) {
            // //               return AlertDialog(
            // //                 title: Text('プロフィールが保存されていません。保存しますか？'),
            // //                 actions: <Widget>[
            // //                   ElevatedButton(
            // //                     style: ElevatedButton.styleFrom(
            // //                         primary: Colors.green,
            // //                         onPrimary: ColorConfig.White),
            // //                     child: Text('いいえ'),
            // //                     onPressed: () {
            // //                       Navigator.pushReplacement(
            // //                           context,
            // //                           MaterialPageRoute(
            // //                               builder: (context) => TabPage(0)));
            // //                     },
            // //                   ),
            // //                   ElevatedButton(
            // //                     style: ElevatedButton.styleFrom(
            // //                         primary: Colors.blue,
            // //                         onPrimary: Colors.white),
            // //                     onPressed: () async {
            // //                       saveName =
            // //                       await profileShow().saveDialog(context);
            // //                       if (saveName != "") {
            // //                         profileDb proDb = new profileDb();
            // //                         String name = nameController.text;
            // //                         String nickName = nickNameController.text;
            // //                         String birthYYYY = birthYYYYController.text;
            // //                         String birthMM = birthMMController.text;
            // //                         String birthDD = birthDDController.text;
            // //                         String personality =
            // //                             personalityController.text;
            // //                         String skill = skillController.text;
            // //                         String myBoom = myBoomController.text;
            // //                         String recentThing =
            // //                             recentThingController.text;
            // //                         String offDay = offDayController.text;
            // //                         String win1BillionYen =
            // //                             win1BillionYenController.text;
            // //                         String reborn = rebornController.text;
            // //                         String wish = wishController.text;
            // //                         String myBestTheme1 =
            // //                             myBestTheme1Controller.text;
            // //                         String teme1MyBest1 =
            // //                             teme1MyBest1Controller.text;
            // //                         String teme1MyBest2 =
            // //                             teme1MyBest2Controller.text;
            // //                         String teme1MyBest3 =
            // //                             teme1MyBest3Controller.text;
            // //                         String myBestTheme2 =
            // //                             myBestTheme2Controller.text;
            // //                         String teme2MyBest1 =
            // //                             teme2MyBest1Controller.text;
            // //                         String teme2MyBest2 =
            // //                             teme2MyBest2Controller.text;
            // //                         String teme2MyBest3 =
            // //                             teme2MyBest3Controller.text;
            // //                         DateTime now = DateTime.now();
            // //                         DateFormat outputFormat =
            // //                         DateFormat('yyyy/MM/dd HH:mm');
            // //                         String date = outputFormat.format(now);
            // //                         String query =
            // //                             'INSERT INTO profile002(saveName, koshinYmd, name, nickName, birthYYYY, birthMM, birthDD, personality, skill, myBoom, recentThing, offDay, win1BillionYen, reborn, wish, myBestTheme1, teme1MyBest1, teme1MyBest2, teme1MyBest3, myBestTheme2, teme2MyBest1, teme2MyBest2, teme2MyBest3) '
            // //                             'VALUES("$saveName", "$date", "$name", "$nickName", "$birthYYYY", "$birthMM", "$birthDD", "$personality", "$skill", "$myBoom", "$recentThing", "$offDay", "$win1BillionYen", "$reborn", "$wish", "$myBestTheme1", "$teme1MyBest1", "$teme1MyBest2", "$teme1MyBest3", "$myBestTheme2", "$teme2MyBest1", "$teme2MyBest2", "$teme2MyBest3")';
            // //
            // //                         await proDb.saveData005(
            // //                             saveName,
            // //                             date,
            // //                             name,
            // //                             nickName,
            // //                             birthYYYY,
            // //                             birthMM,
            // //                             birthDD,
            // //                             personality,
            // //                             skill,
            // //                             myBoom,
            // //                             recentThing,
            // //                             offDay,
            // //                             win1BillionYen,
            // //                             reborn,
            // //                             wish,
            // //                             myBestTheme1,
            // //                             teme1MyBest1,
            // //                             teme1MyBest2,
            // //                             teme1MyBest3,
            // //                             myBestTheme2,
            // //                             teme2MyBest1,
            // //                             teme2MyBest2,
            // //                             teme2MyBest3,
            // //                             query);
            // //                         koshinFlg = "1";
            // //                       }
            // //                       Navigator.pop(context);
            // //                     },
            // //                     child: Text('はい'),
            // //                   ),
            // //                 ],
            // //               );
            // //             });
            // //       }
            // //     }),
            // // //保存/共有ボタン
            // // actions: <Widget>[
            // //   IconButton(
            // //     icon: Icon(Icons.save_alt, color: ColorConfig.Black),
            // //     onPressed: () {
            // //       showDialog(
            // //         context: context,
            // //         builder: (childContext) {
            // //           return SimpleDialog(
            // //             backgroundColor: ColorConfig.White,
            // //             shape: RoundedRectangleBorder(
            // //                 borderRadius:
            // //                 BorderRadius.all(Radius.circular(20))),
            // //             children: <Widget>[
            // //               SimpleDialogOption(
            // //                 onPressed: () async {
            // //                   profileDb proDb = new profileDb();
            // //                   String name = nameController.text;
            // //                   String nickName = nickNameController.text;
            // //                   String birthYYYY = birthYYYYController.text;
            // //                   String birthMM = birthMMController.text;
            // //                   String birthDD = birthDDController.text;
            // //                   String personality = personalityController.text;
            // //                   String skill = skillController.text;
            // //                   String myBoom = myBoomController.text;
            // //                   String recentThing = recentThingController.text;
            // //                   String offDay = offDayController.text;
            // //                   String win1BillionYen =
            // //                       win1BillionYenController.text;
            // //                   String reborn = rebornController.text;
            // //                   String wish = wishController.text;
            // //                   String myBestTheme1 = myBestTheme1Controller.text;
            // //                   String teme1MyBest1 = teme1MyBest1Controller.text;
            // //                   String teme1MyBest2 = teme1MyBest2Controller.text;
            // //                   String teme1MyBest3 = teme1MyBest3Controller.text;
            // //                   String myBestTheme2 = myBestTheme2Controller.text;
            // //                   String teme2MyBest1 = teme2MyBest1Controller.text;
            // //                   String teme2MyBest2 = teme2MyBest2Controller.text;
            // //                   String teme2MyBest3 = teme2MyBest3Controller.text;
            // //                   DateTime now = DateTime.now();
            // //                   DateFormat outputFormat =
            // //                   DateFormat('yyyy/MM/dd HH:mm');
            // //                   String date = outputFormat.format(now);
            // //
            // //                   if (koshinFlg == "1") {
            // //                     ProList plist = new ProList.ProList_005(
            // //                         id: id,
            // //                         saveName: saveName,
            // //                         koshinYmd: date,
            // //                         name: name,
            // //                         nickName_p005: nickName,
            // //                         birthYYYY_p005: birthYYYY,
            // //                         birthMM_p005: birthMM,
            // //                         birthDD_p005: birthDD,
            // //                         personality_p005: personality,
            // //                         skill_p005: skill,
            // //                         myBoom_p005: myBoom,
            // //                         recentThing_p005: recentThing,
            // //                         offDay_p005: offDay,
            // //                         win1BillionYen_p005: win1BillionYen,
            // //                         reborn_p005: reborn,
            // //                         wish_p005: wish,
            // //                         myBestTheme1_p005: myBestTheme1,
            // //                         teme1MyBest1_p005: teme1MyBest1,
            // //                         teme1MyBest2_p005: teme1MyBest2,
            // //                         teme1MyBest3_p005: teme1MyBest3,
            // //                         myBestTheme2_p005: myBestTheme2,
            // //                         teme2MyBest1_p005: teme2MyBest1,
            // //                         teme2MyBest2_p005: teme2MyBest2,
            // //                         teme2MyBest3_p005: teme2MyBest3);
            // //                     await proDb.updateData005(plist);
            // //                     Navigator.pop(childContext);
            // //                   } else {
            // //                     saveName =
            // //                     await profileShow().saveDialog(context);
            // //                     if (saveName != "") {
            // //                       String query =
            // //                           'INSERT INTO profile002(saveName, koshinYmd, name, nickName, birthYYYY, birthMM, birthDD, personality, skill, myBoom, recentThing, offDay, win1BillionYen, reborn, wish, myBestTheme1, teme1MyBest1, teme1MyBest2, teme1MyBest3, myBestTheme2, teme2MyBest1, teme2MyBest2, teme2MyBest3) '
            // //                           'VALUES("$saveName", "$date", "$name", "$nickName", "$birthYYYY", "$birthMM", "$birthDD", "$personality", "$skill", "$myBoom", "$recentThing", "$offDay", "$win1BillionYen", "$reborn", "$wish", "$myBestTheme1", "$teme1MyBest1", "$teme1MyBest2", "$teme1MyBest3", "$myBestTheme2", "$teme2MyBest1", "$teme2MyBest2", "$teme2MyBest3")';
            // //
            // //                       await proDb.saveData005(
            // //                           saveName,
            // //                           date,
            // //                           name,
            // //                           nickName,
            // //                           birthYYYY,
            // //                           birthMM,
            // //                           birthDD,
            // //                           personality,
            // //                           skill,
            // //                           myBoom,
            // //                           recentThing,
            // //                           offDay,
            // //                           win1BillionYen,
            // //                           reborn,
            // //                           wish,
            // //                           myBestTheme1,
            // //                           teme1MyBest1,
            // //                           teme1MyBest2,
            // //                           teme1MyBest3,
            // //                           myBestTheme2,
            // //                           teme2MyBest1,
            // //                           teme2MyBest2,
            // //                           teme2MyBest3,
            // //                           query);
            // //                       koshinFlg = "1";
            // //                     }
            // //                     Navigator.pop(childContext);
            // //                   }
            // //                 },
            //                 child: Center(
            //                   child: Text(
            //                     "プロジェクトとして保存",
            //                     textAlign: TextAlign.center,
            //                   ),
            //                 ),
            //               ),
            //               Divider(color: Colors.black),
            //               SimpleDialogOption(
            //                 onPressed: () {
            //                   print(SizeConfig.screenHeight);
            //                   print(SizeConfig.screenWidth);
            //                   saveImage _saveImage = saveImage();
            //                   _saveImage
            //                       .saveLocalImage(convertWidgetToImageKey);
            //                   Navigator.pop(childContext);
            //                 },
            //                 child: Center(
            //                   child: Text(
            //                     "写真として保存",
            //                     textAlign: TextAlign.center,
            //                   ),
            //                 ),
            //               ),
            //               Divider(color: Colors.black),
            //               SimpleDialogOption(
            //                 onPressed: () {
            //                   shareProvider _shareProvider = shareProvider();
            //                   _shareProvider.shareImageAndText(
            //                       'test', convertWidgetToImageKey);
            //                 },
            //                 child: Center(
            //                   child: Text(
            //                     "宛先を指定してシェア",
            //                     textAlign: TextAlign.center,
            //                   ),
            //                 ),
            //               ),
            //               Divider(color: Colors.black),
            //               SimpleDialogOption(
            //                 onPressed: () {
            //                   Navigator.pop(childContext);
            //                 },
            //                 child: Center(
            //                   child: Text(
            //                     'キャンセル',
            //                     textAlign: TextAlign.center,
            //                     style: TextStyle(
            //                         fontWeight: FontWeight.bold,
            //                         color: Colors.red),
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           );
            //         },
            //       );
            //     },
            //   )
            // ]),
        body: RepaintBoundary(
          key: convertWidgetToImageKey,
          child: SingleChildScrollView(
            child: Stack(children: [
              Container(
                height: SizeConfig.screenHeight*0.85,
                child: Image.asset(
                      'images/profile001/002_profile_103_background.png',
                    fit: BoxFit.cover
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(
                            0.0,
                            SizeConfig.screenHeight * 0.80,
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
                          ],),
                        ),
                    ),
              ),
    );
  }
}