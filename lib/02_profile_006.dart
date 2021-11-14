import 'package:flutter/material.dart';
import 'profileDb.dart';
import '01_Edit.dart';
import 'CreateImage.dart';
import 'main.dart';
import 'profileShow.dart';
import 'package:intl/intl.dart';

class profile_006 extends StatefulWidget {
  late int id;
  late final String saveName;
  late final String koshinYmd;
  late final String name;
  late final String birthYYYY;
  late final String birthMM;
  late final String birthDD;
  late final String place;
  late final String nickName;
  late final String hobby;
  late final String skill;
  late final String myBoom;
  late final String offDay;
  late final String favoriteFood;
  late final String favoriteMovie;
  late final String favoriteAnime;
  late final String favoriteTv;
  late final String favoriteYouTube;
  late final String favoritePlace;
  late final String koshinFlg;

  profile_006.Details(
      this.id,
      this.saveName,
      this.koshinYmd,
      this.name,
      this.birthYYYY,
      this.birthMM,
      this.birthDD,
      this.place,
      this.nickName,
      this.hobby,
      this.skill,
      this.myBoom,
      this.offDay,
      this.favoriteFood,
      this.favoriteMovie,
      this.favoriteAnime,
      this.favoriteTv,
      this.favoriteYouTube,
      this.favoritePlace,
      this.koshinFlg);

  profile_006.make() {
    this.id = 0;
    this.saveName = "";
    this.koshinYmd = "";
    this.name = "";
    this.birthYYYY = "";
    this.birthMM = "";
    this.birthDD = "";
    this.place = "";
    this.nickName = "";
    this.hobby = "";
    this.skill = "";
    this.myBoom = "";
    this.offDay = "";
    this.favoriteFood = "";
    this.favoriteMovie = "";
    this.favoriteAnime = "";
    this.favoriteTv = "";
    this.favoriteYouTube = "";
    this.favoritePlace = "";
    this.koshinFlg = "0";
  }

  @override
  _profile_006 createState() => _profile_006();
}

class _profile_006 extends State<profile_006> {
  var nameController = TextEditingController();
  var birthYYYYController = TextEditingController();
  var birthMMController = TextEditingController();
  var birthDDController = TextEditingController();
  var placeController = TextEditingController();
  var nickNameController = TextEditingController();
  var hobbyController = TextEditingController();
  var skillController = TextEditingController();
  var myBoomController = TextEditingController();
  var offDayController = TextEditingController();
  var favoriteFoodController = TextEditingController();
  var favoriteMovieController = TextEditingController();
  var favoriteAnimeController = TextEditingController();
  var favoriteTvController = TextEditingController();
  var favoriteYouTubeController = TextEditingController();
  var favoritePlaceController = TextEditingController();
  late int id;
  late String koshinFlg;
  late String saveName;
  late String profileTitle;

  void initState() {
    super.initState();
    this.nameController = new TextEditingController(text: widget.name);
    this.birthYYYYController =
        new TextEditingController(text: widget.birthYYYY);
    this.birthMMController = new TextEditingController(text: widget.birthMM);
    this.birthDDController = new TextEditingController(text: widget.birthDD);
    this.placeController = new TextEditingController(text: widget.place);
    this.nickNameController = new TextEditingController(text: widget.nickName);
    this.hobbyController = new TextEditingController(text: widget.hobby);
    this.skillController = new TextEditingController(text: widget.skill);
    this.myBoomController = new TextEditingController(text: widget.myBoom);
    this.offDayController = new TextEditingController(text: widget.offDay);
    this.favoriteFoodController =
        new TextEditingController(text: widget.favoriteFood);
    this.favoriteMovieController =
        new TextEditingController(text: widget.favoriteMovie);
    this.favoriteAnimeController =
        new TextEditingController(text: widget.favoriteAnime);
    this.favoriteTvController =
        new TextEditingController(text: widget.favoriteTv);
    this.favoriteYouTubeController =
        new TextEditingController(text: widget.favoriteYouTube);
    this.favoritePlaceController =
        new TextEditingController(text: widget.favoritePlace);
    this.id = widget.id;
    this.koshinFlg = widget.koshinFlg;
    this.saveName = widget.saveName;
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
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TabPage(1)));
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
                                              builder: (context) =>
                                                  TabPage(0)));
                                    },
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.blue,
                                        onPrimary: Colors.white),
                                    onPressed: () async {
                                      saveName = await profileShow()
                                          .saveDialog(context);
                                      if (saveName != "") {
                                        profileDb proDb = new profileDb();
                                        String name = nameController.text;
                                        String birthYYYY =
                                            birthYYYYController.text;
                                        String birthMM = birthMMController.text;
                                        String birthDD = birthDDController.text;
                                        String place = placeController.text;
                                        String nickName =
                                            nickNameController.text;
                                        String hobby = hobbyController.text;
                                        String skill = skillController.text;
                                        String myBoom = myBoomController.text;
                                        String offDay = offDayController.text;
                                        String favoriteFood =
                                            favoriteFoodController.text;
                                        String favoriteMovie =
                                            favoriteMovieController.text;
                                        String favoriteAnime =
                                            favoriteAnimeController.text;
                                        String favoriteTv =
                                            favoriteTvController.text;
                                        String favoriteYouTube =
                                            favoriteYouTubeController.text;
                                        String favoritePlace =
                                            favoritePlaceController.text;
                                        DateTime now = DateTime.now();
                                        DateFormat outputFormat =
                                            DateFormat('yyyy/MM/dd HH:mm');
                                        String date = outputFormat.format(now);
                                        String query =
                                            'INSERT INTO profile006(saveName, koshinYmd, name, birthYYYY, birthMM, birthDD, place, nickName, hobby, skill, myBoom, offDay, favoriteFood, favoriteMovie, favoriteAnime, favoriteTv, favoriteYouTube, favoritePlace) '
                                            'VALUES("$saveName", "$date", "$name", "$birthYYYY", "$birthMM", "$birthDD", "$place", "$nickName", "$hobby", "$skill", "$myBoom", "$offDay", "$favoriteFood", "$favoriteMovie", "$favoriteAnime", "$favoriteTv", "$favoriteYouTube", "$favoritePlace")';
                                        await proDb.saveData006(
                                            saveName,
                                            date,
                                            name,
                                            birthYYYY,
                                            birthMM,
                                            birthDD,
                                            place,
                                            nickName,
                                            hobby,
                                            skill,
                                            myBoom,
                                            offDay,
                                            favoriteFood,
                                            favoriteMovie,
                                            favoriteAnime,
                                            favoriteTv,
                                            favoriteYouTube,
                                            favoritePlace,
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
                                  String birthYYYY = birthYYYYController.text;
                                  String birthMM = birthMMController.text;
                                  String birthDD = birthDDController.text;
                                  String place = placeController.text;
                                  String nickName = nickNameController.text;
                                  String hobby = hobbyController.text;
                                  String skill = skillController.text;
                                  String myBoom = myBoomController.text;
                                  String offDay = offDayController.text;
                                  String favoriteFood =
                                      favoriteFoodController.text;
                                  String favoriteMovie =
                                      favoriteMovieController.text;
                                  String favoriteAnime =
                                      favoriteAnimeController.text;
                                  String favoriteTv = favoriteTvController.text;
                                  String favoriteYouTube =
                                      favoriteYouTubeController.text;
                                  String favoritePlace =
                                      favoritePlaceController.text;
                                  DateTime now = DateTime.now();
                                  DateFormat outputFormat =
                                      DateFormat('yyyy/MM/dd HH:mm');
                                  String date = outputFormat.format(now);

                                  if (koshinFlg == "1") {
                                    ProList plist = new ProList.ProList_006(
                                        id: id,
                                        saveName: saveName,
                                        koshinYmd: date,
                                        name: name,
                                        birthYYYY_p006: birthYYYY,
                                        birthMM_p006: birthMM,
                                        birthDD_p006: birthDD,
                                        place_p006: place,
                                        nickName_p006: nickName,
                                        hobby_p006: hobby,
                                        skill_p006: skill,
                                        myBoom_p006: myBoom,
                                        offDay_p006: offDay,
                                        favoriteFood_p006: favoriteFood,
                                        favoriteMovie_p006: favoriteMovie,
                                        favoriteAnime_p006: favoriteAnime,
                                        favoriteTv_p006: favoriteTv,
                                        favoriteYouTube_p006: favoriteYouTube,
                                        favoritePlace_p006: favoritePlace);
                                    await proDb.updateData006(plist);
                                    Navigator.pop(childContext);
                                  } else {
                                    saveName =
                                        await profileShow().saveDialog(context);
                                    if (saveName != "") {
                                      String query =
                                          'INSERT INTO profile006(saveName, koshinYmd, name, birthYYYY, birthMM, birthDD, place, nickName, hobby, skill, myBoom, offDay, favoriteFood, favoriteMovie, favoriteAnime, favoriteTv, favoriteYouTube, favoritePlace) '
                                          'VALUES("$saveName", "$date", "$name", "$birthYYYY", "$birthMM", "$birthDD", "$place", "$nickName", "$hobby", "$skill", "$myBoom", "$offDay", "$favoriteFood", "$favoriteMovie", "$favoriteAnime", "$favoriteTv", "$favoriteYouTube", "$favoritePlace")';
                                      await proDb.saveData006(
                                          saveName,
                                          date,
                                          name,
                                          birthYYYY,
                                          birthMM,
                                          birthDD,
                                          place,
                                          nickName,
                                          hobby,
                                          skill,
                                          myBoom,
                                          offDay,
                                          favoriteFood,
                                          favoriteMovie,
                                          favoriteAnime,
                                          favoriteTv,
                                          favoriteYouTube,
                                          favoritePlace,
                                          query);
                                      koshinFlg = "1";
                                    }
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
                                  shareProvider _shareProvider =
                                      shareProvider();
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
                  children: <Widget>[
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Column(children: <Widget>[
                            Container(
                                padding:
                                    EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                                child: Text("My Profile",
                                    style: TextStyle(
                                      color: Color(0x86D400FA),
                                      fontSize: 24,
                                    ))),
                          ]),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0x86D400FA)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 20.0),
                        child: Column(
                          children: <Widget>[
                            Container(height: 10),
                            Row(
                              children: <Widget>[
                                Container(
                                  child: Text("名前",
                                      style: TextStyle(
                                        color: Color(0x86D400FA),
                                        fontSize: 20,
                                      )),
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 0.0),
                                  child: TextField(controller: nameController),
                                  width: 200,
                                  height: 30.0,
                                ),
                              ],
                            ),
                            Divider(
                              height: 30,
                              thickness: 1,
                              color: Color(0x86D400FA),
                            ),
                            Column(children: <Widget>[
                              //１行目
                              Row(
                                children: <Widget>[
                                  Container(
                                      child: Text("誕生日は",
                                          style: TextStyle(fontSize: 18))),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(
                                        5.0, 10.0, 0.0, 0.0),
                                    child: TextField(
                                        controller: birthYYYYController),
                                    width: 50,
                                    height: 30.0,
                                  ),
                                  Container(
                                      child: Text("年",
                                          style: TextStyle(fontSize: 18))),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(
                                        5.0, 10.0, 0.0, 0.0),
                                    child: TextField(
                                        controller: birthMMController),
                                    width: 30,
                                    height: 30.0,
                                  ),
                                  Container(
                                      child: Text("月",
                                          style: TextStyle(fontSize: 18))),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(
                                        5.0, 10.0, 0.0, 0.0),
                                    child: TextField(
                                        controller: birthDDController),
                                    width: 30,
                                    height: 30.0,
                                  ),
                                  Container(
                                      child: Text("日で、今は",
                                          style: TextStyle(fontSize: 18))),
                                ],
                              ),
                              Container(height: 8),
                              //2行目
                              Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.fromLTRB(
                                        5.0, 10.0, 0.0, 0.0),
                                    child:
                                        TextField(controller: placeController),
                                    width: 160,
                                    height: 30.0,
                                  ),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: Text("に住んでるの。",
                                          style: TextStyle(fontSize: 18))),
                                ],
                              ),
                              Container(height: 8),
                              //3行目
                              Row(
                                children: <Widget>[
                                  Container(
                                      child: Text("みんなからは",
                                          style: TextStyle(fontSize: 18))),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(
                                        5.0, 10.0, 0.0, 0.0),
                                    child: TextField(
                                        controller: nickNameController),
                                    width: 180,
                                    height: 30.0,
                                  ),
                                ],
                              ),
                              Container(height: 8),
                              //4行目
                              Row(
                                children: <Widget>[
                                  Container(
                                      child: Text("って呼ばれているよ。",
                                          style: TextStyle(fontSize: 18))),
                                ],
                              ),
                              Container(height: 8),
                              //5行目
                              Row(
                                children: <Widget>[
                                  Container(
                                      child: Text("趣味は",
                                          style: TextStyle(fontSize: 18))),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(
                                        5.0, 10.0, 0.0, 0.0),
                                    child:
                                        TextField(controller: hobbyController),
                                    width: 180,
                                    height: 30.0,
                                  ),
                                  Container(
                                      child: Text("で、",
                                          style: TextStyle(fontSize: 18))),
                                ],
                              ),
                              Container(height: 8),
                              //6行目
                              Row(
                                children: <Widget>[
                                  Container(
                                      child: Text("特技は",
                                          style: TextStyle(fontSize: 18))),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(
                                        5.0, 10.0, 0.0, 0.0),
                                    child:
                                        TextField(controller: skillController),
                                    width: 180,
                                    height: 30.0,
                                  ),
                                  Container(
                                      child: Text("なんだ〜。",
                                          style: TextStyle(fontSize: 18))),
                                ],
                              ),
                              Container(height: 8),
                              Row(
                                children: <Widget>[
                                  Container(
                                      child: Text("マイブームは",
                                          style: TextStyle(fontSize: 18))),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(
                                        5.0, 10.0, 0.0, 0.0),
                                    child:
                                        TextField(controller: myBoomController),
                                    width: 180,
                                    height: 30.0,
                                  ),
                                  Container(
                                      child: Text("で、",
                                          style: TextStyle(fontSize: 18))),
                                ],
                              ),
                              Container(height: 8),
                              Row(
                                children: <Widget>[
                                  Container(
                                      child: Text("お休みの日は",
                                          style: TextStyle(fontSize: 18))),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(
                                        5.0, 10.0, 0.0, 0.0),
                                    child:
                                        TextField(controller: offDayController),
                                    width: 180,
                                    height: 30.0,
                                  ),
                                  Container(
                                      child: Text("をして",
                                          style: TextStyle(fontSize: 18))),
                                ],
                              ),
                              Container(height: 8),
                              Row(
                                children: <Widget>[
                                  Container(
                                      child: Text("過ごしているよー。",
                                          style: TextStyle(fontSize: 18))),
                                ],
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 5.0),
                          child: Container(
                            width: 250,
                            height: 250,
                            decoration: BoxDecoration(
                              color: Color(0x83C6C2FF),
                              // border-radius: 10px 10px 0 0,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                bottomLeft: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.fromLTRB(
                                              0.0, 5.0, 0.0, 5.0),
                                          child: Text("Favorite",
                                              style: TextStyle(
                                                color: Color(0xC8412FFD),
                                                fontSize: 18,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Table(
                                  children: [
                                    TableRow(children: [
                                      TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.middle,
                                        child: Align(
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(
                                                0.0, 0.0, 0.0, 10.0),
                                            child: Text("食べ物"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            0.0, 10.0, 25.0, 10.0),
                                        child: TextField(
                                            controller: favoriteFoodController),
                                        width: 30,
                                        height: 30,
                                      )
                                    ]),
                                    TableRow(children: [
                                      TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.middle,
                                        child: Align(
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(
                                                0.0, 0.0, 0.0, 10.0),
                                            child: Text("映画"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            0.0, 10.0, 25.0, 10.0),
                                        child: TextField(
                                            controller:
                                                favoriteMovieController),
                                        width: 30,
                                        height: 30,
                                      )
                                    ]),
                                    TableRow(children: [
                                      TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.middle,
                                        child: Align(
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(
                                                0.0, 0.0, 0.0, 10.0),
                                            child: Text("アニメ"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            0.0, 10.0, 25.0, 10.0),
                                        child: TextField(
                                            controller:
                                                favoriteAnimeController),
                                        width: 30,
                                        height: 30,
                                      )
                                    ]),
                                    TableRow(children: [
                                      TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.middle,
                                        child: Align(
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(
                                                0.0, 0.0, 0.0, 10.0),
                                            child: Text("TV番組"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            0.0, 10.0, 25.0, 10.0),
                                        child: TextField(
                                            controller: favoriteTvController),
                                        width: 30,
                                        height: 30,
                                      )
                                    ]),
                                    TableRow(children: [
                                      TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.middle,
                                        child: Align(
                                          child: Column(
                                            children: [
                                              Container(
                                                child: Text("YouTube"),
                                              ),
                                              Container(
                                                child: Text("チャンネル"),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            0.0, 10.0, 25.0, 0.0),
                                        child: TextField(
                                            controller:
                                                favoriteYouTubeController),
                                        width: 30,
                                        height: 30,
                                      )
                                    ]),
                                    TableRow(children: [
                                      TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.middle,
                                        child: Align(
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(
                                                0.0, 0.0, 0.0, 10.0),
                                            child: Text("場所"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            0.0, 10.0, 25.0, 10.0),
                                        child: TextField(
                                            controller:
                                                favoritePlaceController),
                                        width: 30,
                                        height: 30,
                                      )
                                    ]),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Column(children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(0.0, 20.0, 10.0, 5.0),
                            // color: Colors.amber,
                            width: 100,
                            height: 100,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 5.0),
                            // color: Colors.amber,
                            width: 100,
                            height: 100,
                          ),
                        ]),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 5.0)),
                  ],
                ),
              ),
            )));
  }
}
