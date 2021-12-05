import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter/cupertino.dart';

class profileDb {
  void createData() async {
    debugPrint("createData start");
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "ftProBook77.db");

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(
        "CREATE TABLE IF NOT EXISTS profile001 (id INTEGER PRIMARY KEY, saveName TEXT, koshinYmd TEXT , name TEXT, birth TEXT, hobby TEXT, specialSkill TEXT, freeTime TEXT, SNS1 TEXT, SNS2 TEXT, ranking1 TEXT, first1 TEXT,second1 TEXT,third1 TEXT, ranking2 TEXT, first2 TEXT,second2 TEXT,third2 TEXT,freeeSpace TEXT)",
      );
      await db.execute(
        "CREATE TABLE IF NOT EXISTS profile002 (id INTEGER PRIMARY KEY, saveName TEXT, koshinYmd TEXT , name TEXT, nickName TEXT, birthYYYY TEXT, birthMM TEXT, birthDD TEXT, personality TEXT, skill TEXT, myBoom TEXT, recentThing TEXT, offDay TEXT, win1BillionYen TEXT, reborn TEXT, wish TEXT,myBestTheme1 TEXT, teme1MyBest1 TEXT, teme1MyBest2 TEXT, teme1MyBest3 TEXT, myBestTheme2 TEXT, teme2MyBest1 TEXT, teme2MyBest2 TEXT, teme2MyBest3 TEXT)",
      );
      await db.execute(
        "CREATE TABLE IF NOT EXISTS profile003 (id INTEGER PRIMARY KEY, saveName TEXT, koshinYmd TEXT , name TEXT, birth TEXT, place TEXT, bloodType TEXT, favoriteThing TEXT, free TEXT, sliderValue1 REAL, slider1Koumoku1 TEXT, slider1Koumoku2 TEXT, sliderValue2 REAL, slider2Koumoku1 TEXT, slider2Koumoku2 TEXT, sliderValue3 REAL, slider3Koumoku1 TEXT, slider3Koumoku2 TEXT, myImagePath TEXT)",
      );
    });
    debugPrint("createData end");
  }

  //データセット処理(プロフィール)
  //プロフィール帳①作成
  Future<void> saveData001(
      String saveName,
      String koshinYmd,
      String name,
      String birth,
      String hobby,
      String specialSkill,
      String freeTime,
      String SNS1,
      String SNS2,
      String ranking1,
      String first1,
      String second1,
      String third1,
      String ranking2,
      String first2,
      String second2,
      String third2,
      String freeeSpace,
      String query) async {
    debugPrint("insertData start");
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "ftProBook77.db");
    print("$saveName");
    print("$query");
    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          await db.execute(
              "CREATE TABLE IF NOT EXISTS profile001 (id INTEGER PRIMARY KEY, saveName TEXT, koshinYmd TEXT , name TEXT, birth TEXT, hobby TEXT, specialSkill TEXT, freeTime TEXT, SNS1 TEXT, SNS2 TEXT, ranking1 TEXT, first1 TEXT,second1 TEXT,third1 TEXT, ranking2 TEXT, first2 TEXT,second2 TEXT,third2 TEXT,freeeSpace TEXT)");
        });
    await database.transaction((txn) async {
      int id = await txn.rawInsert(query);
      print("insert: $id");
    });

    debugPrint("insertSaveData end");
  }

  //プロフィール帳③作成
  Future<void> saveData003(
      String saveName,
      String koshinYmd,
      String name,
      String birth,
      String place,
      String bloodType,
      String favoriteThing,
      String free,
      double _sliderValue1,
      String slider1Koumoku1,
      String slider1Koumoku2,
      double _sliderValue2,
      String slider2Koumoku1,
      String slider2Koumoku2,
      double _sliderValue3,
      String slider3Koumoku1,
      String slider3Koumoku2,
      String myImagePath,
      String query) async {
    debugPrint("insertData start");
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "ftProBook77.db");
    print("$saveName");
    print("$query");
    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(
          "CREATE TABLE IF NOT EXISTS profile003 (id INTEGER PRIMARY KEY, saveName TEXT, koshinYmd TEXT , name TEXT, birth TEXT, place TEXT, bloodType TEXT, favoriteThing TEXT, free TEXT, sliderValue1 REAL, slider1Koumoku1 TEXT, slider1Koumoku2 TEXT, sliderValue2 REAL, slider2Koumoku1 TEXT, slider2Koumoku2 TEXT, sliderValue3 REAL, slider3Koumoku1 TEXT, slider3Koumoku2 TEXT, myImagePath TEXT)");
    });
    await database.transaction((txn) async {
      int id = await txn.rawInsert(query);
      print("insert: $id");
    });

    debugPrint("insertSaveData end");
  }

  //プロフィール帳⑤作成
  Future<void> saveData005(
      String saveName,
      String koshinYmd,
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
      String teme2MyBest3, //MyBestランキング
      String query) async {
    debugPrint("insertData start");
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "ftProBook77.db");

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(
          "CREATE TABLE IF NOT EXISTS profile002 (id INTEGER PRIMARY KEY, saveName TEXT, koshinYmd TEXT , name TEXT, nickName TEXT, birthYYYY TEXT, birthMM TEXT, birthDD TEXT, personality TEXT, skill TEXT, myBoom TEXT, recentThing TEXT, offDay TEXT, win1BillionYen TEXT, reborn TEXT, wish TEXT,myBestTheme1 TEXT, teme1MyBest1 TEXT, teme1MyBest2 TEXT, teme1MyBest3 TEXT, myBestTheme2 TEXT, teme2MyBest1 TEXT, teme2MyBest2 TEXT, teme2MyBest3 TEXT)");
    });
    await database.transaction((txn) async {
      int id = await txn.rawInsert(query);
      print("insert: $id");
    });

    debugPrint("insertSaveData end");
  }

  //プロフィール帳⑥作成
  Future<void> saveData006(
      String saveName,
      String koshinYmd,
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
      String favoritePlace,
      String query) async {
    debugPrint("insertData start");
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "ftProBook77.db");

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(
        "CREATE TABLE IF NOT EXISTS profile006 (id INTEGER PRIMARY KEY, saveName TEXT, koshinYmd TEXT , name TEXT, birthYYYY TEXT, birthMM TEXT, birthDD TEXT, place TEXT, nickName TEXT, hobby TEXT, skill TEXT, myBoom TEXT, offDay TEXT, favoriteFood TEXT, favoriteMovie TEXT, favoriteAnime TEXT,favoriteTv TEXT, favoriteYouTube TEXT, favoritePlace TEXT)",
      );
    });
    await database.transaction((txn) async {
      int id = await txn.rawInsert(query);
      print("insert: $id");
    });

    debugPrint("insertSaveData end");
  }

  //データ削除処理
  Future<void> deleteData(int id, String tableName) async {
    debugPrint("DeleteData start");
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "ftProBook77.db");
    final database = await openDatabase(
      path,
      version: 1,
    );
    final Database db = await database;

    // Remove the Dog from the database.
    await db.delete(
      tableName,
      // Use a where clause to delete a specific dog.
      where: "id = ?",
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [id],
    );
  }

  //データ更新プロフィール001
  Future<void> updateData001(ProList plist) async {
    debugPrint("Updata start");
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "ftProBook77.db");
    final database = await openDatabase(
      path,
      version: 1,
    );
    final Database db = await database;

    await db.update(
      'profile001',
      plist.toMap_001(),
      where: "id = ?",
      whereArgs: [plist.id],
      conflictAlgorithm: ConflictAlgorithm.abort,
    );
  }

  //データ更新プロフィール003
  Future<void> updateData003(ProList plist) async {
    debugPrint("Updata start");
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "ftProBook77.db");
    final database = await openDatabase(
      path,
      version: 1,
    );
    final Database db = await database;

    await db.update(
      'profile003',
      plist.toMap_003(),
      where: "id = ?",
      whereArgs: [plist.id],
      conflictAlgorithm: ConflictAlgorithm.abort,
    );
  }

  //データ更新プロフィール005
  Future<void> updateData005(ProList plist) async {
    debugPrint("Updata start");
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "ftProBook77.db");
    final database = await openDatabase(
      path,
      version: 1,
    );
    final Database db = await database;

    await db.update(
      'profile002',
      plist.toMap_005(),
      where: "id = ?",
      whereArgs: [plist.id],
      conflictAlgorithm: ConflictAlgorithm.abort,
    );
    debugPrint("Updata End");
  }

  //データ更新プロフィール006
  Future<void> updateData006(ProList plist) async {
    debugPrint("Updata start");
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "ftProBook77.db");
    final database = await openDatabase(
      path,
      version: 1,
    );
    final Database db = await database;

    await db.update(
      'profile006',
      plist.toMap_006(),
      where: "id = ?",
      whereArgs: [plist.id],
      conflictAlgorithm: ConflictAlgorithm.abort,
    );
    debugPrint("Updata End");
  }

//データ選択(List表示)
  Future<List<ProList>> getDataList() async {
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "ftProBook77.db");
    final database = await openDatabase(
      path,
      version: 1,
    );
    final Database db = await database;
    List<ProList> plist_001 = <ProList>[];
    List<ProList> plist_003 = <ProList>[];
    List<ProList> plist_005 = <ProList>[];
    // List<ProList> plist_006 = <ProList>[];
    List<ProList> plist = <ProList>[];

    final List<Map<String, dynamic>> maps001 =
    await db.rawQuery('SELECT * FROM profile001');

    plist_001 = new List.generate(maps001.length, (i) {
      return ProList.ProList_001(
          id: maps001[i]['id'],
          saveName: maps001[i]['saveName'],
          koshinYmd: maps001[i]['koshinYmd'],
          name: maps001[i]['name'],
          birth_p001: maps001[i]['birth'],
          hobby_p001: maps001[i]['hobby'],
          specialSkill_p001: maps001[i]['specialSkill'],
          freeTime_p001: maps001[i]['freeTime'],
          SNS1_p001: maps001[i]['SNS1'],
          SNS2_p001: maps001[i]['SNS2'],
          ranking1_p001: maps001[i]['ranking1'],
          first1_p001: maps001[i]['first1'],
          second1_p001: maps001[i]['second1'],
          third1_p001: maps001[i]['third1'],
          ranking2_p001: maps001[i]['ranking2'],
          first2_p001: maps001[i]['first2'],
          second2_p001: maps001[i]['second2'],
          third2_p001: maps001[i]['third2'],
          freeeSpace_p001: maps001[i]['freeeSpace']);
    });

    final List<Map<String, dynamic>> maps003 =
        await db.rawQuery('SELECT * FROM profile003');

    plist_003 = new List.generate(maps003.length, (i) {
      return ProList.ProList_003(
          id: maps003[i]['id'],
          saveName: maps003[i]['saveName'],
          koshinYmd: maps003[i]['koshinYmd'],
          name: maps003[i]['name'],
          birth_p003: maps003[i]['birth'],
          place_p003: maps003[i]['place'],
          bloodType_p003: maps003[i]['bloodType'],
          favoriteThing_p003: maps003[i]['favoriteThing'],
          free_p003: maps003[i]['free'],
          sliderValue1_p003: maps003[i]['sliderValue1'],
          slider1Koumoku1_p003: maps003[i]['slider1Koumoku1'],
          slider1Koumoku2_p003: maps003[i]['slider1Koumoku2'],
          sliderValue2_p003: maps003[i]['sliderValue2'],
          slider2Koumoku1_p003: maps003[i]['slider2Koumoku1'],
          slider2Koumoku2_p003: maps003[i]['slider2Koumoku2'],
          sliderValue3_p003: maps003[i]['sliderValue3'],
          slider3Koumoku1_p003: maps003[i]['slider3Koumoku1'],
          slider3Koumoku2_p003: maps003[i]['slider3Koumoku2'],
          myImagePath_p003: maps003[i]['myImagePath']);
    });

    final List<Map<String, dynamic>> maps005 =
        await db.rawQuery('SELECT * FROM profile002');
    plist_005 = new List.generate(maps005.length, (i) {
      return ProList.ProList_005(
          id: maps005[i]['id'],
          saveName: maps005[i]['saveName'],
          koshinYmd: maps005[i]['koshinYmd'],
          name: maps005[i]['name'],
          nickName_p005: maps005[i]['nickName'],
          birthYYYY_p005: maps005[i]['birthYYYY'],
          birthMM_p005: maps005[i]['birthMM'],
          birthDD_p005: maps005[i]['birthDD'],
          personality_p005: maps005[i]['personality'],
          skill_p005: maps005[i]['skill'],
          myBoom_p005: maps005[i]['myBoom'],
          recentThing_p005: maps005[i]['recentThing'],
          offDay_p005: maps005[i]['offDay'],
          win1BillionYen_p005: maps005[i]['win1BillionYen'],
          reborn_p005: maps005[i]['reborn'],
          wish_p005: maps005[i]['wish'],
          myBestTheme1_p005: maps005[i]['myBestTheme1'],
          teme1MyBest1_p005: maps005[i]['teme1MyBest1'],
          teme1MyBest2_p005: maps005[i]['teme1MyBest2'],
          teme1MyBest3_p005: maps005[i]['teme1MyBest3'],
          myBestTheme2_p005: maps005[i]['myBestTheme2'],
          teme2MyBest1_p005: maps005[i]['teme2MyBest1'],
          teme2MyBest2_p005: maps005[i]['teme2MyBest2'],
          teme2MyBest3_p005: maps005[i]['teme2MyBest3']);
    });

    // final List<Map<String, dynamic>> maps006 =
    //     await db.rawQuery('SELECT * FROM profile006');
    // plist_006 = new List.generate(maps006.length, (i) {
    //   return ProList.ProList_006(
    //       id: maps006[i]['id'],
    //       saveName: maps006[i]['saveName'],
    //       koshinYmd: maps006[i]['koshinYmd'],
    //       name: maps006[i]['name'],
    //       birthYYYY_p006: maps006[i]['birthYYYY'],
    //       birthMM_p006: maps006[i]['birthMM'],
    //       birthDD_p006: maps006[i]['birthDD'],
    //       place_p006: maps006[i]['place'],
    //       nickName_p006: maps006[i]['nickName'],
    //       hobby_p006: maps006[i]['hobby'],
    //       skill_p006: maps006[i]['skill'],
    //       myBoom_p006: maps006[i]['myBoom'],
    //       offDay_p006: maps006[i]['offDay'],
    //       favoriteFood_p006: maps006[i]['favoriteFood'],
    //       favoriteMovie_p006: maps006[i]['favoriteMovie'],
    //       favoriteAnime_p006: maps006[i]['favoriteAnime'],
    //       favoriteTv_p006: maps006[i]['favoriteTv'],
    //       favoriteYouTube_p006: maps006[i]['favoriteYouTube'],
    //       favoritePlace_p006: maps006[i]['favoritePlace']);
    // });

    plist = plist_001 + plist_003 + plist_005;
    return plist;
  }
}

class ProList {
  //共通
  String saveName = "";
  String koshinYmd = "";
  String name = "";
  int id = 0;
  String tableName = "";

  //プロフィール帳①
  String birth_p001 = "";
  String place_p001 = "";
  String hobby_p001 = "";
  String specialSkill_p001 = "";
  String freeTime_p001 = "";
  String SNS1_p001 = "";
  String SNS2_p001 = "";
  String ranking1_p001 = "";
  String first1_p001 = "";
  String second1_p001 = "";
  String third1_p001 = "";
  String ranking2_p001 = "";
  String first2_p001 = "";
  String second2_p001 = "";
  String third2_p001 = "";
  String freeeSpace_p001 = "";

  //プロフィール帳③
  String birth_p003 = "";
  String place_p003 = "";
  String bloodType_p003 = "";
  String favoriteThing_p003 = "";
  String free_p003 = "";
  double sliderValue1_p003 = 0.0;
  String slider1Koumoku1_p003 = "";
  String slider1Koumoku2_p003 = "";
  String slider2Koumoku1_p003 = "";
  String slider2Koumoku2_p003 = "";
  String slider3Koumoku1_p003 = "";
  String slider3Koumoku2_p003 = "";
  double sliderValue2_p003 = 0.0;
  double sliderValue3_p003 = 0.0;
  String myImagePath_p003 = "";

  //プロフィール帳⑤
  String nickName_p005 = "";
  String birthYYYY_p005 = "";
  String birthMM_p005 = "";
  String birthDD_p005 = "";
  String personality_p005 = "";
  String skill_p005 = "";
  String myBoom_p005 = "";
  String recentThing_p005 = "";
  String offDay_p005 = "";
  String win1BillionYen_p005 = "";
  String reborn_p005 = "";
  String wish_p005 = "";
  String myBestTheme1_p005 = "";
  String teme1MyBest1_p005 = "";
  String teme1MyBest2_p005 = "";
  String teme1MyBest3_p005 = "";
  String myBestTheme2_p005 = "";
  String teme2MyBest1_p005 = "";
  String teme2MyBest2_p005 = "";
  String teme2MyBest3_p005 = "";

  //プロフィール帳⑤
  String birthYYYY_p006 = "";
  String birthMM_p006 = "";
  String birthDD_p006 = "";
  String place_p006 = "";
  String nickName_p006 = "";
  String hobby_p006 = "";
  String skill_p006 = "";
  String myBoom_p006 = "";
  String offDay_p006 = "";
  String favoriteFood_p006 = "";
  String favoriteMovie_p006 = "";
  String favoriteAnime_p006 = "";
  String favoriteTv_p006 = "";
  String favoriteYouTube_p006 = "";
  String favoritePlace_p006 = "";

  ProList.ProList_001(
      {required this.id,
        required this.saveName,
        required this.koshinYmd,
        required this.name,
        required this.birth_p001,
        required this.hobby_p001,
        required this.specialSkill_p001,
        required this.freeTime_p001,
        required this.SNS1_p001,
        required this.SNS2_p001,
        required this.ranking1_p001,
        required this.first1_p001,
        required this.second1_p001,
        required this.third1_p001,
        required this.ranking2_p001,
        required this.first2_p001,
        required this.second2_p001,
        required this.third2_p001,
        required this.freeeSpace_p001}) {
    this.tableName = "profile001";
  }

  ProList.ProList_003(
      {required this.id,
      required this.saveName,
      required this.koshinYmd,
      required this.name,
      required this.birth_p003,
      required this.place_p003,
      required this.bloodType_p003,
      required this.favoriteThing_p003,
      required this.free_p003,
      required this.sliderValue1_p003,
      required this.slider1Koumoku1_p003,
      required this.slider1Koumoku2_p003,
      required this.sliderValue2_p003,
      required this.slider2Koumoku1_p003,
      required this.slider2Koumoku2_p003,
      required this.sliderValue3_p003,
      required this.slider3Koumoku1_p003,
      required this.slider3Koumoku2_p003,
      required this.myImagePath_p003}) {
    this.tableName = "profile003";
  }

  ProList.ProList_005(
      {required this.id,
      required this.saveName,
      required this.koshinYmd,
      required this.name,
      required this.nickName_p005,
      required this.birthYYYY_p005,
      required this.birthMM_p005,
      required this.birthDD_p005,
      required this.personality_p005,
      required this.skill_p005,
      required this.myBoom_p005,
      required this.recentThing_p005,
      required this.offDay_p005,
      required this.win1BillionYen_p005,
      required this.reborn_p005,
      required this.wish_p005,
      required this.myBestTheme1_p005,
      required this.teme1MyBest1_p005,
      required this.teme1MyBest2_p005,
      required this.teme1MyBest3_p005,
      required this.myBestTheme2_p005,
      required this.teme2MyBest1_p005,
      required this.teme2MyBest2_p005,
      required this.teme2MyBest3_p005}) {
    this.tableName = "profile002";
  }

  ProList.ProList_006(
      {required this.id,
      required this.saveName,
      required this.koshinYmd,
      required this.name,
      required this.birthYYYY_p006,
      required this.birthMM_p006,
      required this.birthDD_p006,
      required this.place_p006,
      required this.nickName_p006,
      required this.hobby_p006,
      required this.skill_p006,
      required this.myBoom_p006,
      required this.offDay_p006,
      required this.favoriteFood_p006,
      required this.favoriteMovie_p006,
      required this.favoriteAnime_p006,
      required this.favoriteTv_p006,
      required this.favoriteYouTube_p006,
      required this.favoritePlace_p006}) {
    this.tableName = "profile006";
  }

  // ProList({required this.id_p003, required this.name_p003, required this.birth_p003, required this.place_p003, required this.bloodType_p003, required this.favoriteThing_p003, required this.free_p003, required this.sliderValue1_p003, required this.sliderValue2_p003, required this.sliderValue3_p003, required this.sliderValue4_p003, required this.sliderValue5_p003,
  //   required this.id_p005 , required this.name_p005, required this.nickName_p005, required this.birthYYYY_p005, required this.birthMM_p005, required this.birthDD_p005, required this.personality_p005, required this.skill_p005, required this.myBoom_p005, required this.recentThing_p005,
  //   required this.offDay_p005, required this.win1BillionYen_p005, required this.reborn_p005, required this.wish_p005,
  //   required this.myBestTheme1_p005,required this.teme1MyBest1_p005,required this.teme1MyBest2_p005,required this.teme1MyBest3_p005,
  //   required this.myBestTheme2_p005,required this.teme2MyBest1_p005,required this.teme2MyBest2_p005,required this.teme2MyBest3_p005
  // });

  Map<String, dynamic> toMap_001() {
    return {
      'id': id,
      'saveName': saveName,
      'koshinYmd': koshinYmd,
      'name': name,
      'birth': birth_p001,
      'hobby': hobby_p001,
      'specialSkill': specialSkill_p001,
      'freeTime': freeTime_p001,
      'SNS1': SNS1_p001,
      'SNS2': SNS2_p001,
      'ranking1': ranking1_p001,
      'first1': first1_p001,
      'second1': second1_p001,
      'third1': third1_p001,
      'ranking2': ranking2_p001,
      'first2': first2_p001,
      'second2': second2_p001,
      'third2': third2_p001,
      'freeeSpace': freeeSpace_p001
    };
  }

  Map<String, dynamic> toMap_003() {
    return {
      'id': id,
      'saveName': saveName,
      'koshinYmd': koshinYmd,
      'name': name,
      'birth': birth_p003,
      'place': place_p003,
      'bloodType': bloodType_p003,
      'favoriteThing': favoriteThing_p003,
      'free': free_p003,
      'sliderValue1': sliderValue1_p003,
      'slider1Koumoku1': slider1Koumoku1_p003,
      'slider1Koumoku2': slider1Koumoku2_p003,
      'sliderValue2': sliderValue2_p003,
      'slider2Koumoku1': slider2Koumoku1_p003,
      'slider2Koumoku2': slider2Koumoku2_p003,
      'sliderValue3': sliderValue3_p003,
      'slider3Koumoku1': slider3Koumoku1_p003,
      'slider3Koumoku2': slider3Koumoku2_p003,
      'myImagePath': myImagePath_p003
    };
  }

  Map<String, dynamic> toMap_005() {
    return {
      'id': id,
      'saveName': saveName,
      'koshinYmd': koshinYmd,
      'name': name,
      'nickName': nickName_p005,
      'birthYYYY': birthYYYY_p005,
      'birthMM': birthMM_p005,
      'birthDD': birthDD_p005,
      'personality': personality_p005,
      'skill': skill_p005,
      'myBoom': myBoom_p005,
      'recentThing': recentThing_p005,
      'offDay': offDay_p005,
      'win1BillionYen': win1BillionYen_p005,
      'reborn': reborn_p005,
      'wish': wish_p005,
      'myBestTheme1': myBestTheme1_p005,
      'teme1MyBest1': teme1MyBest1_p005,
      'teme1MyBest2': teme1MyBest2_p005,
      'teme1MyBest3': teme1MyBest3_p005,
      'myBestTheme2': myBestTheme2_p005,
      'teme2MyBest1': teme2MyBest1_p005,
      'teme2MyBest2': teme2MyBest2_p005,
      'teme2MyBest3': teme2MyBest3_p005
    };
  }

  Map<String, dynamic> toMap_006() {
    return {
      'id': id,
      'saveName': saveName,
      'koshinYmd': koshinYmd,
      'name': name,
      'birthYYYY': birthYYYY_p006,
      'birthMM': birthMM_p006,
      'birthDD': birthDD_p006,
      'place': place_p006,
      'nickName': nickName_p006,
      'hobby': hobby_p006,
      'skill': skill_p006,
      'myBoom': myBoom_p006,
      'offDay': offDay_p006,
      'favoriteFood': favoriteFood_p006,
      'favoriteMovie': favoriteMovie_p006,
      'favoriteAnime': favoriteAnime_p006,
      'favoriteTv': favoriteTv_p006,
      'favoriteYouTube': favoriteYouTube_p006,
      'favoritePlace': favoritePlace_p006
    };
  }
}
