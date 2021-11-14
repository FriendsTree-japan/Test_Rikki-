import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'main.dart';
import '01_Select.dart';
import 'profileDb.dart';
import '01_Edit.dart';
import 'CreateImage.dart';
import 'profileShow.dart';
import 'package:intl/intl.dart';

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
  }

  @override
  Widget build(BuildContext context) {
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
                  color: Color(0x86D400FA),
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
                                    String nickName = nickNameController.text;
                                    String birthYYYY = birthYYYYController.text;
                                    String birthMM = birthMMController.text;
                                    String birthDD = birthDDController.text;
                                    String personality =
                                        personalityController.text;
                                    String skill = skillController.text;
                                    String myBoom = myBoomController.text;
                                    String recentThing =
                                        recentThingController.text;
                                    String offDay = offDayController.text;
                                    String win1BillionYen =
                                        win1BillionYenController.text;
                                    String reborn = rebornController.text;
                                    String wish = wishController.text;
                                    String myBestTheme1 =
                                        myBestTheme1Controller.text;
                                    String teme1MyBest1 =
                                        teme1MyBest1Controller.text;
                                    String teme1MyBest2 =
                                        teme1MyBest2Controller.text;
                                    String teme1MyBest3 =
                                        teme1MyBest3Controller.text;
                                    String myBestTheme2 =
                                        myBestTheme2Controller.text;
                                    String teme2MyBest1 =
                                        teme2MyBest1Controller.text;
                                    String teme2MyBest2 =
                                        teme2MyBest2Controller.text;
                                    String teme2MyBest3 =
                                        teme2MyBest3Controller.text;
                                    DateTime now = DateTime.now();
                                    DateFormat outputFormat =
                                        DateFormat('yyyy/MM/dd HH:mm');
                                    String date = outputFormat.format(now);
                                    String query =
                                        'INSERT INTO profile005(saveName, koshinYmd, name, nickName, birthYYYY, birthMM, birthDD, personality, skill, myBoom, recentThing, offDay, win1BillionYen, reborn, wish, myBestTheme1, teme1MyBest1, teme1MyBest2, teme1MyBest3, myBestTheme2, teme2MyBest1, teme2MyBest2, teme2MyBest3) '
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
                                Navigator.pop(childContext);
                              } else {
                                saveName =
                                    await profileShow().saveDialog(context);
                                if (saveName != "") {
                                  String query =
                                      'INSERT INTO profile005(saveName, koshinYmd, name, nickName, birthYYYY, birthMM, birthDD, personality, skill, myBoom, recentThing, offDay, win1BillionYen, reborn, wish, myBestTheme1, teme1MyBest1, teme1MyBest2, teme1MyBest3, myBestTheme2, teme2MyBest1, teme2MyBest2, teme2MyBest3) '
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
                              child: Text("　My Profile",
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 24,
                                  ))),
                        ),
                      ]),
                      Padding(padding: EdgeInsets.all(10.0)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0x72A2BEFF)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Text("わたし・ぼくの名前は",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14,
                                      )),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  child: TextField(
                                    controller: nameController,
                                    maxLength: 20,
                                    decoration: const InputDecoration(
                                      counterText: '',
                                    ),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  width: 160,
                                  height: 20,
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Text("",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  child: TextField(
                                    controller: nickNameController,
                                    maxLength: 22,
                                    decoration: const InputDecoration(
                                      counterText: '',
                                    ),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  width: 200,
                                  height: 20,
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Text("って呼んでね〜",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Text("誕生日は",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14,
                                      )),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  child: TextField(
                                    controller: birthYYYYController,
                                    maxLength: 4,
                                    decoration: const InputDecoration(
                                      counterText: '',
                                    ),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  width: 60,
                                  height: 20,
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Text("年",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14,
                                      )),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  child: TextField(
                                    controller: birthMMController,
                                    maxLength: 2,
                                    decoration: const InputDecoration(
                                      counterText: '',
                                    ),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  width: 50,
                                  height: 20,
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Text("月",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14,
                                      )),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  child: TextField(
                                    controller: birthDDController,
                                    maxLength: 2,
                                    decoration: const InputDecoration(
                                      counterText: '',
                                    ),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  width: 50,
                                  height: 20,
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Text("日",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Text("性格は",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14,
                                      )),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  child: TextField(
                                    controller: personalityController,
                                    maxLength: 22,
                                    decoration: const InputDecoration(
                                      counterText: '',
                                    ),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  width: 180,
                                  height: 20,
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Text("だと思ってるよ",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Text("そんなわたし・ぼくだけど、これからもよろしくね",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Text("特技・趣味は",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14,
                                      )),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  child: TextField(
                                    controller: skillController,
                                    maxLength: 30,
                                    decoration: const InputDecoration(
                                      counterText: '',
                                    ),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  width: 240,
                                  height: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Text("マイブームは",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14,
                                      )),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  child: TextField(
                                    controller: myBoomController,
                                    maxLength: 28,
                                    decoration: const InputDecoration(
                                      counterText: '',
                                    ),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  width: 215,
                                  height: 20,
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Text("で、",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Text("最近やってみたいことは",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14,
                                      )),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  child: TextField(
                                    controller: recentThingController,
                                    maxLength: 14,
                                    decoration: const InputDecoration(
                                      counterText: '',
                                    ),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  width: 120,
                                  height: 20,
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Text("かな〜",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          child: Text("休みの日は何してる？",
                              style: TextStyle(
                                color: Color(0x860047FA),
                                fontSize: 14,
                              )),
                        ),
                        Container(
                          child: TextField(
                            controller: offDayController,
                            maxLength: 16,
                            decoration: const InputDecoration(
                              counterText: '',
                            ),
                            style: TextStyle(fontSize: 14),
                          ),
                          width: 150,
                          height: 20,
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Column(
                      children: <Widget>[
                        Container(
                          child: Text("１０億円当たったら？",
                              style: TextStyle(
                                color: Color(0x860047FA),
                                fontSize: 14,
                              )),
                        ),
                        Container(
                          child: TextField(
                            controller: win1BillionYenController,
                            maxLength: 16,
                            decoration: const InputDecoration(
                              counterText: '',
                            ),
                            style: TextStyle(fontSize: 14),
                          ),
                          width: 150,
                          height: 20,
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 15.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          child: Text("生まれ変わるなら？",
                              style: TextStyle(
                                color: Color(0x860047FA),
                                fontSize: 14,
                              )),
                        ),
                        Container(
                          child: TextField(
                            controller: rebornController,
                            maxLength: 16,
                            decoration: const InputDecoration(
                              counterText: '',
                            ),
                            style: TextStyle(fontSize: 14),
                          ),
                          width: 150,
                          height: 20,
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                    Column(
                      children: <Widget>[
                        Container(
                          child: Text("願いが一つ叶ったら？",
                              style: TextStyle(
                                color: Color(0x860047FA),
                                fontSize: 14,
                              )),
                        ),
                        Container(
                          child: TextField(
                            controller: wishController,
                            maxLength: 16,
                            decoration: const InputDecoration(
                              counterText: '',
                            ),
                            style: TextStyle(fontSize: 14),
                          ),
                          width: 150,
                          height: 20,
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(10.0)),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 25.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0x86F2B8FF)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Text("My Best 3",
                                      style: TextStyle(
                                        color: Color(0x86D400FA),
                                        fontSize: 18,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  child: TextField(
                                    controller: myBestTheme1Controller,
                                    textAlign: TextAlign.center,
                                    maxLength: 18,
                                    decoration: const InputDecoration(
                                      counterText: '',
                                    ),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  width: 160,
                                  height: 20,
                                ),
                                Padding(padding: EdgeInsets.all(5.0)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        child: Text("第１位",
                                            style: TextStyle(fontSize: 10))),
                                    Padding(padding: EdgeInsets.all(5.0)),
                                    Container(
                                      child: TextField(
                                        controller: teme1MyBest1Controller,
                                        maxLength: 16,
                                        decoration: const InputDecoration(
                                          counterText: '',
                                        ),
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      width: 120,
                                      height: 20.0,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        child: Text("第２位",
                                            style: TextStyle(fontSize: 10))),
                                    Padding(padding: EdgeInsets.all(5.0)),
                                    Container(
                                      child: TextField(
                                        controller: teme1MyBest2Controller,
                                        maxLength: 16,
                                        decoration: const InputDecoration(
                                          counterText: '',
                                        ),
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      width: 120,
                                      height: 20.0,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        child: Text("第３位",
                                            style: TextStyle(fontSize: 10))),
                                    Padding(padding: EdgeInsets.all(5.0)),
                                    Container(
                                      child: TextField(
                                        controller: teme1MyBest3Controller,
                                        maxLength: 16,
                                        decoration: const InputDecoration(
                                          counterText: '',
                                        ),
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      width: 120,
                                      height: 20.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(7.0)),
                            Column(
                              children: <Widget>[
                                Container(
                                  child: TextField(
                                    controller: myBestTheme2Controller,
                                    textAlign: TextAlign.center,
                                    maxLength: 18,
                                    decoration: const InputDecoration(
                                      counterText: '',
                                    ),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  width: 160,
                                  height: 20,
                                ),
                                Padding(padding: EdgeInsets.all(5.0)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        child: Text("第１位",
                                            style: TextStyle(fontSize: 10))),
                                    Padding(padding: EdgeInsets.all(5.0)),
                                    Container(
                                      child: TextField(
                                        controller: teme2MyBest1Controller,
                                        maxLength: 16,
                                        decoration: const InputDecoration(
                                          counterText: '',
                                        ),
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      width: 120,
                                      height: 20.0,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        child: Text("第２位",
                                            style: TextStyle(fontSize: 10))),
                                    Padding(padding: EdgeInsets.all(5.0)),
                                    Container(
                                      child: TextField(
                                        controller: teme2MyBest2Controller,
                                        maxLength: 16,
                                        decoration: const InputDecoration(
                                          counterText: '',
                                        ),
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      width: 120,
                                      height: 20.0,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        child: Text("第３位",
                                            style: TextStyle(fontSize: 10))),
                                    Padding(padding: EdgeInsets.all(5.0)),
                                    Container(
                                      child: TextField(
                                        controller: teme2MyBest3Controller,
                                        maxLength: 16,
                                        decoration: const InputDecoration(
                                          counterText: '',
                                        ),
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      width: 120,
                                      height: 20.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(10.0)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
