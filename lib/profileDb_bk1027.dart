import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'main.dart';
import 'package:sqflite/sqflite.dart';
import 'package:collection/collection.dart';
import 'package:path/path.dart';
import 'package:flutter/cupertino.dart';

class profileDb {
  void createData_003() async {
    debugPrint("createData start");
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "profile003.db");

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          await db.execute(
              "CREATE TABLE IF NOT EXISTS profile003 (id INTEGER PRIMARY KEY, name TEXT, birth TEXT, place TEXT, bloodType TEXT, favoriteThing TEXT, free TEXT, sliderValue1 REAL, sliderValue2 REAL, sliderValue3 REAL, sliderValue4 REAL, sliderValue5 REAL)");
        }
    );
    debugPrint("createData end");
  }

  void createData_005() async {
    debugPrint("createData start");
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "profile005.db");

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          await db.execute(
            "CREATE TABLE IF NOT EXISTS profile005 (id INTEGER PRIMARY KEY, name TEXT, birthYYYY TEXT, birthMM TEXT, birthDD TEXT, personality TEXT, skill TEXT, myBoom TEXT, recentThing TEXT, offDay TEXT, win1BillionYen TEXT, reborn TEXT, wish TEXT,myBestTheme1 TEXT, teme1MyBest1 TEXT, teme1MyBest2 TEXT, teme1MyBest3 TEXT, myBestTheme2 TEXT, teme2MyBest1 TEXT, teme2MyBest2 TEXT, teme2MyBest3 TEXT)",);
        }
    );
    debugPrint("createData end");
  }

  //データセット処理(プロフィール)
  //プロフィール帳③作成
  Future<void> saveData(String name, String birth, String place,
      String bloodType, String favoriteThing, String free, double _sliderValue1,
      double _sliderValue2, double _sliderValue3, double _sliderValue4,
      double _sliderValue5, String query) async {
    debugPrint("insertData start");
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "profile003.db");

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          await db.execute(
              "CREATE TABLE IF NOT EXISTS profile003 (id INTEGER PRIMARY KEY, name TEXT, birth TEXT, place TEXT, bloodType TEXT, favoriteThing TEXT, free TEXT, sliderValue1 REAL, sliderValue2 REAL, sliderValue3 REAL, sliderValue4 REAL, sliderValue5 REAL)");
        }
    );
    await database.transaction((txn) async {
      int id = await txn.rawInsert(query);
      print("insert: $id");
    });

    debugPrint("insertSaveData end");
  }

  //プロフィール帳⑤作成
  Future<void> saveData005(String name, String nickName, String birthYYYY,
      String birthMM, String birthDD, String personality, String skill,
      String myBoom, String recentThing, //プロフィール説明
      String offDay, String win1BillionYen, String reborn, String wish, //質問回答
      String myBestTheme1, String teme1MyBest1, String teme1MyBest2,
      String teme1MyBest3, String myBestTheme2, String teme2MyBest1,
      String teme2MyBest2, String teme2MyBest3, //MyBestランキング
      String query) async {
    debugPrint("insertData start");
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "profile005.db");

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          await db.execute(
              "CREATE TABLE IF NOT EXISTS profile005 (id INTEGER PRIMARY KEY, name TEXT, birthYYYY TEXT, birthMM TEXT, birthDD TEXT, personality TEXT, skill TEXT, myBoom TEXT, recentThing TEXT, offDay TEXT, win1BillionYen TEXT, reborn TEXT, wish TEXT,myBestTheme1 TEXT, teme1MyBest1 TEXT, teme1MyBest2 TEXT, teme1MyBest3 TEXT, myBestTheme2 TEXT, teme2MyBest1 TEXT, teme2MyBest2 TEXT, teme2MyBest3 TEXT)");
        }
    );
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
    String path = join(dbPath, "${tableName}.db");
    final database = await openDatabase(path, version: 1,);
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

  //データ更新プロフィール003
  Future<void> updateData003(ProList plist) async {
    debugPrint("Updata start");
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "profile003.db");
    final database = await openDatabase(path, version: 1,);
    final Database db = await database;

    await db.update(
      'profile003',
      plist.toMap_003(),
      where: "id = ?",
      whereArgs: [plist.id_p003],
      conflictAlgorithm: ConflictAlgorithm.abort,
    );
  }

  //データ更新プロフィール005
  Future<void> updateData005(ProList plist) async {
    debugPrint("Updata start");
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "profile005.db");
    final database = await openDatabase(path, version: 1,);
    final Database db = await database;

    await db.update(
      'profile005',
      plist.toMap_005(),
      where: "id = ?",
      whereArgs: [plist.id_p005],
      conflictAlgorithm: ConflictAlgorithm.abort,
    );
  }

  //データ選択(List表示)
  Future<List<ProList>> getDataList003() async {
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "profile003.db");
    final database = await openDatabase(path, version: 1,);
    final Database db = await database;
    List<ProList> plist_003 = <ProList>[];

    final List<Map<String, dynamic>> maps003 = await db.rawQuery(
        'SELECT * FROM profile003');

    plist_003 = new List.generate(maps003.length, (i) {
      return ProList.ProList_003(
        id_p003: maps003[i]['id'],
        name: maps003[i]['name'],
        birth_p003: maps003[i]['birth'],
        place_p003: maps003[i]['place'],
        bloodType_p003: maps003[i]['bloodType'],
        favoriteThing_p003: maps003[i]['favoriteThing'],
        free_p003: maps003[i]['free'],
        sliderValue1_p003: maps003[i]['sliderValue1'],
        sliderValue2_p003: maps003[i]['sliderValue2'],
        sliderValue3_p003: maps003[i]['sliderValue3'],
        sliderValue4_p003: maps003[i]['sliderValue4'],
        sliderValue5_p003: maps003[i]['sliderValue5'],
      );
    });
    return plist_003;
  }

  Future<List<ProList>> getDataList005() async {
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "profile005.db");
    final database = await openDatabase(path, version: 1,);
    final Database db = await database;
    List<ProList> plist_005 = <ProList>[];

    final List<Map<String, dynamic>> maps005 = await db.rawQuery(
        'SELECT * FROM profile005');
    plist_005 = new List.generate(maps005.length, (i) {
      return ProList.ProList_005(
          id_p005: maps005[i]['id'],
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
          teme2MyBest3_p005: maps005[i]['teme2MyBest3']
      );
    });
    return plist_005;
  }
}

class ProList {
  String name ="";
  int id_p003 = 0;
  String birth_p003 ="";
  String place_p003 ="";
  String bloodType_p003 ="";
  String favoriteThing_p003 ="";
  String free_p003 ="";
  double sliderValue1_p003 =0.0;
  double sliderValue2_p003 =0.0;
  double sliderValue3_p003 =0.0;
  double sliderValue4_p003 =0.0;
  double sliderValue5_p003 =0.0;
  int id_p005= 0;
  String nickName_p005="";
  String birthYYYY_p005="";
  String birthMM_p005="";
  String birthDD_p005="";
  String personality_p005="";
  String skill_p005="";
  String myBoom_p005="";
  String recentThing_p005="";
  String offDay_p005="";
  String win1BillionYen_p005="";
  String reborn_p005="";
  String wish_p005="";
  String myBestTheme1_p005="";
  String teme1MyBest1_p005="";
  String teme1MyBest2_p005="";
  String teme1MyBest3_p005="";
  String myBestTheme2_p005="";
  String teme2MyBest1_p005="";
  String teme2MyBest2_p005="";
  String teme2MyBest3_p005="";
  String tableName="";

  ProList.ProList_003({required this.id_p003, required this.name, required this.birth_p003, required this.place_p003, required this.bloodType_p003, required this.favoriteThing_p003, required this.free_p003, required this.sliderValue1_p003, required this.sliderValue2_p003, required this.sliderValue3_p003, required this.sliderValue4_p003, required this.sliderValue5_p003
  }){
    this.tableName = "profile003";
  }

  ProList.ProList_005({required this.id_p005 , required this.name, required this.nickName_p005, required this.birthYYYY_p005, required this.birthMM_p005, required this.birthDD_p005, required this.personality_p005, required this.skill_p005, required this.myBoom_p005, required this.recentThing_p005,
    required this.offDay_p005, required this.win1BillionYen_p005, required this.reborn_p005, required this.wish_p005,
    required this.myBestTheme1_p005,required this.teme1MyBest1_p005,required this.teme1MyBest2_p005,required this.teme1MyBest3_p005,
    required this.myBestTheme2_p005,required this.teme2MyBest1_p005,required this.teme2MyBest2_p005,required this.teme2MyBest3_p005
  }){
    this.tableName = "profile005";
  }

  // ProList({required this.id_p003, required this.name_p003, required this.birth_p003, required this.place_p003, required this.bloodType_p003, required this.favoriteThing_p003, required this.free_p003, required this.sliderValue1_p003, required this.sliderValue2_p003, required this.sliderValue3_p003, required this.sliderValue4_p003, required this.sliderValue5_p003,
  //   required this.id_p005 , required this.name_p005, required this.nickName_p005, required this.birthYYYY_p005, required this.birthMM_p005, required this.birthDD_p005, required this.personality_p005, required this.skill_p005, required this.myBoom_p005, required this.recentThing_p005,
  //   required this.offDay_p005, required this.win1BillionYen_p005, required this.reborn_p005, required this.wish_p005,
  //   required this.myBestTheme1_p005,required this.teme1MyBest1_p005,required this.teme1MyBest2_p005,required this.teme1MyBest3_p005,
  //   required this.myBestTheme2_p005,required this.teme2MyBest1_p005,required this.teme2MyBest2_p005,required this.teme2MyBest3_p005
  // });



  Map<String, dynamic> toMap_003() {
    return {
      'id': id_p003,
      'name': name,
      'birth' : birth_p003,
      'place' : place_p003,
      'bloodType' : bloodType_p003,
      'favoriteThing' : favoriteThing_p003,
      'free' : free_p003,
      'sliderValue1' : sliderValue1_p003,
      'sliderValue2' : sliderValue2_p003,
      'sliderValue3' : sliderValue3_p003,
      'sliderValue4' : sliderValue4_p003,
      'sliderValue5' : sliderValue5_p003,
    };
  }
  Map<String, dynamic> toMap_005() {
    return {
      'id': id_p005,
      'name': name,
      'nickName' : nickName_p005,
      'birthYYYY' : birthYYYY_p005,
      'birthMM' : birthMM_p005,
      'birthDD' : birthDD_p005,
      'personality' : personality_p005,
      'skill' : skill_p005,
      'myBoom' : myBoom_p005,
      'recentThing' : recentThing_p005,
      'offDay' : offDay_p005,
      'win1BillionYen' : win1BillionYen_p005,
      'reborn' : reborn_p005,
      'wish' : wish_p005,
      'myBestTheme1' : myBestTheme1_p005,
      'teme1MyBest1' : teme1MyBest1_p005,
      'teme1MyBest2' : teme1MyBest2_p005,
      'teme1MyBest3' : teme1MyBest3_p005,
      'myBestTheme2' : myBestTheme2_p005,
      'teme2MyBest1' : teme2MyBest1_p005,
      'teme2MyBest2' : teme2MyBest2_p005,
      'teme2MyBest3' : teme2MyBest3_p005
    };
  }
}