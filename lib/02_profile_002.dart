// import 'package:flutter/material.dart';
// import 'package:screenshot/screenshot.dart';
// import 'main.dart';
// import '01_Select.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:collection/collection.dart';
// import 'package:path/path.dart';
// import 'ProfileDetailes001.dart';
// import 'profileDb.dart';
// import '02_profile_001.dart';
// import 'profileShow.dart';
//
//
// class Edit_test extends StatefulWidget {
//   @override
//   _Edit_test createState() => new _Edit_test();
// }
//
// class _Edit_test extends State<Edit_test> {
//   Future<List<ProList>> result = profileDb().getData() ;//    for (Map item in result) {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("プロフィール帳一覧"),
//         ),
//         body: FutureBuilder(
//             future: result,
//             builder: (BuildContext context,AsyncSnapshot<List<ProList>> snapshot){
//               if (snapshot.connectionState != ConnectionState.done){
//                 return new Expanded(
//                     child: Center(
//                       child: new CircularProgressIndicator(),
//                     )
//                 );
//               } else if (snapshot.hasError) {
//                 return new Text('Error: ${snapshot.error}');
//               } else if (snapshot.hasData){
//                 final List<ProList> prolists = snapshot.data ?? <ProList>[];
//                 return Align(
//                   // オブジェクト配列でカード表示を行う
//                   child: ListView.builder(
//                     shrinkWrap: true,
//                     padding: const EdgeInsets.all(8),
//                     // ②配列のデータ数分カード表示を行う
//                     itemCount: prolists.length,
//                     itemBuilder: (BuildContext context, int index) {
//                       return Card(
//                         child: InkWell(
//                           //onTap: () {
//                           //debugPrint("tap : " +
//                           //'${prolists[index].name}');
//                           //_editArticle(prolists[index]);
//                           //},
//                           child: Column(
//                             children: <Widget>[
//                               ListTile(
//                                 title:
//                                 // ③オブジェクトの属性(タイトル属性)を参照する
//                                 Text(
//                                   '${prolists[index].name}',style: TextStyle(color: Colors.blue,fontSize: 20),
//                                 ),
//                                 subtitle:
//                                 //  mainAxisAlignment:
//                                 //   MainAxisAlignment
//                                 //     .spaceBetween, // 両端に寄せる
//                                 // children: <Widget>[
//                                 Text(
//                                     '${prolists[index].age}'"歳"
//                                 ),
//                                 onTap: (){
// //              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => ProfileDetailes(prolists[index].id,prolists[index].name,prolists[index].age,prolists[index].favoriteThing,prolists[index].hateThing)), (route) => false);
//                                   Navigator.push(
//                                       context, MaterialPageRoute(builder: (context) => ProfileDetailes(prolists[index].id,prolists[index].name,prolists[index].age,prolists[index].favoriteThing,prolists[index].hateThing)));
//                                 },
//                                 trailing: IconButton(
//                                   icon: new Icon(Icons.delete),
//                                   onPressed: () async{
//                                     // 削除の確認ダイアログを表示
//                                     profileShow proshow = new profileShow();
//                                     await proshow.confirmDeleteDialog(prolists[index].id,context);
//                                   },
//                                 ),),],
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 );
//               }else{
//                 return Text("データが存在しません");
//               }
//             }
//         )
//     );
//   }
// }