import 'package:flutter/material.dart';
import '01_Edit.dart';
import 'profileDb.dart';
import 'main.dart';
import 'package:intl/intl.dart';

class profileShow {
//   profileShow({Key? key,}) : super(key: key);
//
//   @override
//   _profileShowState createState() => _profileShowState();
// }
//
// class _profileShowState extends State<profileShow>  {
//   Widget build(BuildContext context){
//     return
//
//   }
  Future<void> confirmDeleteDialog(
      int id, String tableName, BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        debugPrint("id:" + id.toString());
        return AlertDialog(
          title: Text('削除しますか？'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('はいを選ぶと'),
                Text('メモが完全に破棄されます。'),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue, onPrimary: Colors.purple),
              child: Text('はい', style: TextStyle(color: Colors.white)),
              onPressed: () async {
                profileDb delData = new profileDb();
                delData.deleteData(id, tableName);
                Navigator.pop(context);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => TabPage(1)));
                //Navigator.pushAndRemoveUntil(context, new MaterialPageRoute(builder: (context) => profile_002()),(_) => false);
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => profile_002()));
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue, onPrimary: Colors.purple),
              child: Text('いいえ', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> saveDialog003(
      BuildContext context,
      String name,
      String birth,
      String place,
      String bloodType,
      String favoriteThing,
      String free,
      double sliderValue1,
      double sliderValue2,
      double sliderValue3,
      double sliderValue4,
      double sliderValue5) async {
    var saveNameController = TextEditingController();
    String saveName = "";
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('プロジェクト保存名'),
            content: TextField(
              controller: saveNameController,
              decoration: InputDecoration(hintText: "ここに入力"),
            ),
            actions: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue, onPrimary: Colors.white),
                child: Text('キャンセル'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue, onPrimary: Colors.white),
                child: Text('OK'),
                onPressed: () async {
                  saveName = saveNameController.text;
                  DateTime now = DateTime.now();
                  DateFormat outputFormat = DateFormat('yyyy/MM/dd HH:mm');
                  String date = outputFormat.format(now);

                  String query =
                      'INSERT INTO profile003(saveName, koshinYmd, name, birth, place, bloodType, favoriteThing, free, sliderValue1, sliderValue2, sliderValue3, sliderValue4, sliderValue5) '
                      'VALUES("$saveName", "$date", "$name", "$birth", "$place", "$bloodType", "$favoriteThing", "$free", $sliderValue1, $sliderValue2, $sliderValue3, $sliderValue4, $sliderValue5)';
                  profileDb proDb = new profileDb();
                  await proDb.saveData003(
                      saveName,
                      date,
                      name,
                      birth,
                      place,
                      bloodType,
                      favoriteThing,
                      free,
                      sliderValue1,
                      sliderValue2,
                      sliderValue3,
                      sliderValue4,
                      sliderValue5,
                      query);
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  Future<void> saveDialog005(
      BuildContext context,
      String name,
      String nickName,
      String birthYYYY,
      String birthMM,
      String birthDD,
      String personality,
      String skill,
      String myBoom,
      String recentThing, //プロフィール説明
      String offDay,
      String win1BillionYen,
      String reborn,
      String wish, //質問回答
      String myBestTheme1,
      String teme1MyBest1,
      String teme1MyBest2,
      String teme1MyBest3,
      String myBestTheme2,
      String teme2MyBest1,
      String teme2MyBest2,
      String teme2MyBest3) async {
    var saveNameController = TextEditingController();
    String saveName = "";
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('プロジェクト保存名'),
            content: TextField(
              controller: saveNameController,
              decoration: InputDecoration(hintText: "ここに入力"),
            ),
            actions: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue, onPrimary: Colors.white),
                child: Text('キャンセル'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue, onPrimary: Colors.white),
                child: Text('OK'),
                onPressed: () async {
                  saveName = saveNameController.text;
                  DateTime now = DateTime.now();
                  DateFormat outputFormat = DateFormat('yyyy/MM/dd HH:mm');
                  String date = outputFormat.format(now);

                  String query =
                      'INSERT INTO profile005(saveName, koshinYmd, name, nickName, birthYYYY, birthMM, birthDD, personality, skill, myBoom, recentThing, offDay, win1BillionYen, reborn, wish, myBestTheme1, teme1MyBest1, teme1MyBest2, teme1MyBest3, myBestTheme2, teme2MyBest1, teme2MyBest2, teme2MyBest3) '
                      'VALUES("$saveName", "$date", "$name", "$nickName", "$birthYYYY", "$birthMM", "$birthDD", "$personality", "$skill", "$myBoom", "$recentThing", "$offDay", "$win1BillionYen", "$reborn", "$wish", "$myBestTheme1", "$teme1MyBest1", "$teme1MyBest2", "$teme1MyBest3", "$myBestTheme2", "$teme2MyBest1", "$teme2MyBest2", "$teme2MyBest3")';
                  profileDb proDb = new profileDb();
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
                  showDialog(BuildContext context) => AlertDialog(
                        title: Text("saved"),
                        content: Text("insert data into database."),
                      );
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  Future<void> saveDialog006(
      BuildContext context,
      String name,
      String birthYYYY,
      String birthMM,
      String birthDD,
      String place,
      String nickName,
      String hobby,
      String skill,
      String myBoom,
      String offDay, //各種質問
      String favoriteFood,
      String favoriteMovie,
      String favoriteAnime, //ランキング
      String favoriteTv,
      String favoriteYouTube,
      String favoritePlace) async {
    var saveNameController = TextEditingController();
    String saveName = "";
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('プロジェクト保存名'),
            content: TextField(
              controller: saveNameController,
              decoration: InputDecoration(hintText: "ここに入力"),
            ),
            actions: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue, onPrimary: Colors.white),
                child: Text('キャンセル'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue, onPrimary: Colors.white),
                child: Text('OK'),
                onPressed: () async {
                  saveName = saveNameController.text;
                  DateTime now = DateTime.now();
                  DateFormat outputFormat = DateFormat('yyyy/MM/dd HH:mm');
                  String date = outputFormat.format(now);
                  String query =
                      'INSERT INTO profile006(saveName, koshinYmd, name, birthYYYY, birthMM, birthDD, place, nickName, hobby, skill, myBoom, offDay, favoriteFood, favoriteMovie, favoriteAnime, favoriteTv, favoriteYouTube, favoritePlace) '
                      'VALUES("$saveName", "$date", "$name", "$birthYYYY", "$birthMM", "$birthDD", "$place", "$nickName", "$hobby", "$skill", "$myBoom", "$offDay", "$favoriteFood", "$favoriteMovie", "$favoriteAnime", "$favoriteTv", "$favoriteYouTube", "$favoritePlace")';
                  profileDb proDb = new profileDb();
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
                  showDialog(BuildContext context) => AlertDialog(
                        title: Text("saved"),
                        content: Text("insert data into database."),
                      );

                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }
}
