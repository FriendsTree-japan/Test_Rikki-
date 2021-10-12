import 'package:flutter/material.dart';
import '01_Edit.dart';
import 'profileDb.dart';
import 'main.dart';

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
  Future<void> confirmDeleteDialog(int id, BuildContext context) async {
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
                delData.deleteData(id);
                Navigator.pop(context);
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Edit()));
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
}
