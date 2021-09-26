import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'main.dart';
import 'package:sqflite/sqflite.dart';
import 'package:collection/collection.dart';
import 'package:path/path.dart';
import 'package:flutter/cupertino.dart';

class profileDb {
  //データセット処理
  Future<void> saveData(String name,String age,String favoriteThing,String hateThing,String query) async {
    debugPrint("insertData start");
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "mypofile.db");

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          await db.execute(
              "CREATE TABLE IF NOT EXISTS mypofile (id INTEGER PRIMARY KEY, name TEXT, age TEXT, favoriteThing TEXT, hateThing TEXT)");
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
    String path = join(dbPath, "mypofile.db");
    final database = await openDatabase(path, version: 1,);
    final Database db = await database;

    // Remove the Dog from the database.
    await db.delete(
      'mypofile',
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
    String path = join(dbPath, "mypofile.db");
    final database = await openDatabase(path, version: 1,);
    final Database db = await database;

    await db.update(
      'mypofile',
      plist.toMap(),
      where: "id = ?",
      whereArgs: [plist.id],
      conflictAlgorithm: ConflictAlgorithm.abort,
    );
  }

  //データ選択(List表示)
  Future<List<ProList>> getData() async {
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "mypofile.db");
    final database = await openDatabase(path, version: 1,);
    final Database db = await database;
    final List<Map<String,dynamic>> maps = await db.rawQuery('SELECT * FROM mypofile');
    return List.generate(maps.length, (i) {
      return ProList(
          id: maps[i]['id'],
          name: maps[i]['name'],
          age: maps[i]['age'],
          favoriteThing: maps[i]['favoriteThing'],
          hateThing: maps[i]['hateThing']

      );
    });
  }
}
class ProList {
  int id;
  late final String name;
  late final String age;
  late final String favoriteThing;
  late final String hateThing;

  ProList({required this.id , required this.name, required this.age, required this.favoriteThing, required this.hateThing });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'age' : age,
      'favoriteThing' : favoriteThing,
      'hateThing' : hateThing
    };
  }

  @override
  String toString() {
    return 'ProList{ id: $id }';
  }
}


//    for (Map item in result) {
//      _items.add(
//        ListTile(
//          title: Text(item['name']),
//        ),
//      );
//    };
//    return _items;

//async {
//  List<Widget> list = <Widget>[];
//  String dbPath = await getDatabasesPath();
//  String path = join(dbPath, "mypofile.db");

//  Database database = await openDatabase(path, version: 1,
//      onCreate: (Database db, int version) async {
//        await db.execute(
//            "CREATE TABLE IF NOT EXISTS mypofile (id INTEGER PRIMARY KEY, name , age TEXT, favoriteThing TEXT, hateThing TEXT)");
//      }
//  );
//  List<Map> result = await database.rawQuery('SELECT * FROM mypofile');
//  for (Map item in result) {
//    list.add(
//        ListTile(
//          title: Text(item['name']),
//        )
//    );
//   }
//  setState(() {
//    _items = list;
//    });
//  }