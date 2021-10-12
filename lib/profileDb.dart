import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'main.dart';
import 'package:sqflite/sqflite.dart';
import 'package:collection/collection.dart';
import 'package:path/path.dart';
import 'package:flutter/cupertino.dart';

class profileDb {
  //データセット処理(プロフィール①)
  Future<void> saveData(String name,String birth,String place,String bloodType,String favoriteThing,String free,double _sliderValue1,double _sliderValue2,double _sliderValue3,double _sliderValue4,double _sliderValue5,String query) async {
    debugPrint("insertData start");
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "profile1.db");

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          await db.execute(
              "CREATE TABLE IF NOT EXISTS profile1 (id INTEGER PRIMARY KEY, name TEXT, birth TEXT, place TEXT, bloodType TEXT, favoriteThing TEXT, free TEXT, sliderValue1 REAL, sliderValue2 REAL, sliderValue3 REAL, sliderValue4 REAL, sliderValue5 REAL)");
        }
    );
    await database.transaction((txn) async {
      int id = await txn.rawInsert(query);
      print("insert: $id");
    });

    debugPrint("insertSaveData end");
  }
  //データ削除処理
  Future<void> deleteData(int id) async {
    debugPrint("DeleteData start");
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "profile1.db");
    final database = await openDatabase(path, version: 1,);
    final Database db = await database;

    // Remove the Dog from the database.
    await db.delete(
      'profile1',
      // Use a where clause to delete a specific dog.
      where: "id = ?",
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [id],
    );
  }

  //データ更新
  Future<void> updateData(ProList plist) async {
    debugPrint("Updata start");
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "profile1.db");
    final database = await openDatabase(path, version: 1,);
    final Database db = await database;

    await db.update(
      'profile1',
      plist.toMap(),
      where: "id = ?",
      whereArgs: [plist.id],
      conflictAlgorithm: ConflictAlgorithm.abort,
    );
  }

  //データ選択(List表示)
  Future<List<ProList>> getData() async {
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "profile1.db");
    final database = await openDatabase(path, version: 1,);
    final Database db = await database;
    final List<Map<String,dynamic>> maps = await db.rawQuery('SELECT * FROM profile1');
    return List.generate(maps.length, (i) {
      return ProList(
          id: maps[i]['id'],
          name: maps[i]['name'],
          birth: maps[i]['birth'],
          place: maps[i]['place'],
          bloodType: maps[i]['bloodType'],
          favoriteThing: maps[i]['favoriteThing'],
          free: maps[i]['free'],
          sliderValue1: maps[i]['sliderValue1'],
          sliderValue2: maps[i]['sliderValue2'],
          sliderValue3: maps[i]['sliderValue3'],
          sliderValue4: maps[i]['sliderValue4'],
          sliderValue5: maps[i]['sliderValue5']
      );
    });
  }
}
class ProList {
  int id;
  late final String name;
  late final String birth;
  late final String place;
  late final String bloodType;
  late final String favoriteThing;
  late final String free;
  late final double sliderValue1;
  late final double sliderValue2;
  late final double sliderValue3;
  late final double sliderValue4;
  late final double sliderValue5;

  ProList({required this.id , required this.name, required this.birth, required this.place, required this.bloodType, required this.favoriteThing, required this.free, required this.sliderValue1, required this.sliderValue2, required this.sliderValue3, required this.sliderValue4, required this.sliderValue5 });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'birth' : birth,
      'place' : place,
      'bloodType' : bloodType,
      'favoriteThing' : favoriteThing,
      'free' : free,
      'sliderValue1' : sliderValue1,
      'sliderValue2' : sliderValue2,
      'sliderValue3' : sliderValue3,
      'sliderValue4' : sliderValue4,
      'sliderValue5' : sliderValue5,
    };
  }

  @override
  String toString() {
    return 'ProList{ id: $id }';
  }
}