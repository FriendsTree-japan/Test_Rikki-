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

  Future<dynamic> saveDialog(
    BuildContext context,
  ) async {
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
                onPressed: () async {
                  Navigator.pop(context, saveName);
                  return Future.value(false);
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
                  if (saveName == "") {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('プロジェクト保存名を入力してください'),
                            actions: <Widget>[
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.blue,
                                    onPrimary: Colors.white),
                                child: Text('OK'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          );
                        });
                  } else {
                    Navigator.pop(context, saveName);
                    return Future.value(false);
                  }
                },
              ),
            ],
          );
        });
  }
}
