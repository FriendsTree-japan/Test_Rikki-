import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'main.dart';
import '01_Select.dart';
import 'package:sqflite/sqflite.dart';
import 'package:collection/collection.dart';
import 'package:path/path.dart';
import 'profileDb.dart';

class profile_001 extends StatefulWidget {
  @override
  _profile_001 createState() => _profile_001();
}

class _profile_001 extends State<profile_001> {
  ScreenshotController screenshotController = ScreenshotController();
  var nameController = TextEditingController();
  var ageController = TextEditingController();
  var favoriteThingController = TextEditingController();
  var hateThingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 30,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('名前を入力してください'),
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child: TextField(
                controller: nameController,
              ),
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child: Text('年齢はいくつですか'),
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child: TextField(
                controller: ageController,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('好きなことは何ですか'),
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child: TextField(
                controller: favoriteThingController,
              ),
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child: Text('嫌いなことは何ですか'),
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child: TextField(
                controller:hateThingController,
              ),
            ),

            Align(
              alignment: Alignment.bottomRight,
              child: RaisedButton(
                  child: Text('戻る'),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => MyApp()));
                  }
              ),
            ),

            Align(
              alignment: Alignment.bottomRight,
              child: RaisedButton(
                  child: Text('保存'),
                  onPressed: () async{
                    profileDb proDb = new profileDb();
                    String name = nameController.text;
                    String age = ageController.text;
                    String favoriteThing = favoriteThingController.text;
                    String hateThing = hateThingController.text;
                    String query = 'INSERT INTO mypofile(name, age, favoriteThing, hateThing) VALUES("$name", "$age", "$favoriteThing", "$hateThing")';

                    //await proDb.saveData(name,age,favoriteThing,hateThing,query);

                    showDialog(BuildContext context) => AlertDialog(
                      title: Text("saved"),
                      content: Text("insert data into database."),
                    );
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyApp()));
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}