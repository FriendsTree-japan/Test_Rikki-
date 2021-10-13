// import 'package:flutter/material.dart';
// import 'package:screenshot/screenshot.dart';
// import '01_Edit.dart';
// import 'main.dart';
// import '01_Select.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:collection/collection.dart';
// import 'package:path/path.dart';
// import 'profileDb.dart';
//
//
// class ProfileDetailes extends StatefulWidget {
//   final int id;
//   final String name;
//   final String age;
//   final String favoriteThing;
//   final String hateThing;
//   ProfileDetailes(this.id,this.name,this.age,this.favoriteThing,this.hateThing);
//
//   @override
//   _ProfileDetailes createState() => _ProfileDetailes();
// }
//
// class _ProfileDetailes extends State<ProfileDetailes> {
//   TextEditingController nameController = new TextEditingController();
//   TextEditingController ageController = new TextEditingController();
//   TextEditingController favoriteThingController = new TextEditingController();
//   TextEditingController hateThingController = new TextEditingController();
//   late int id;
//
//   void initState() {
//     super.initState();
//     this.nameController = new TextEditingController(text: widget.name);
//     this.ageController = new TextEditingController(text: widget.age);
//     this.favoriteThingController =
//     new TextEditingController(text: widget.favoriteThing);
//     this.hateThingController =
//     new TextEditingController(text: widget.hateThing);
//     this.id = widget.id;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:
//       SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           mainAxisSize: MainAxisSize.max,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               height: 30,
//             ),
//             Align(
//               alignment: Alignment.bottomLeft,
//               child: Text('名前を入力してください'),
//             ),
//
//             Align(
//               alignment: Alignment.bottomLeft,
//               child: TextField(
//                 controller: nameController,
//               ),
//             ),
//
//             Align(
//               alignment: Alignment.bottomLeft,
//               child: Text('年齢はいくつですか'),
//             ),
//
//             Align(
//               alignment: Alignment.bottomLeft,
//               child: TextField(
//                 controller: ageController,
//               ),
//             ),
//             Align(
//               alignment: Alignment.bottomLeft,
//               child: Text('好きなことは何ですか'),
//             ),
//
//             Align(
//               alignment: Alignment.bottomLeft,
//               child: TextField(
//                 controller: favoriteThingController,
//               ),
//             ),
//
//             Align(
//               alignment: Alignment.bottomLeft,
//               child: Text('嫌いなことは何ですか'),
//             ),
//
//             Align(
//               alignment: Alignment.bottomLeft,
//               child: TextField(
//                 controller: hateThingController,
//               ),
//             ),
//
//             Align(
//               alignment: Alignment.bottomRight,
//               child: RaisedButton(
//                   child: Text('戻る'),
//                   onPressed: () {
//                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Edit()));
//                   }
//               ),
//             ),
//
//             Align(
//               alignment: Alignment.bottomRight,
//               child: RaisedButton(
//                   child: Text('更新'),
//                   onPressed: () async {
//                     profileDb proDb = new profileDb();
//                     String name = nameController.text;
//                     String age = ageController.text;
//                     String favoriteThing = favoriteThingController.text;
//                     String hateThing = hateThingController.text;
//
//                     ProList plist = new ProList(id: id,name: name,age: age,favoriteThing: favoriteThing,hateThing: hateThing);
//                     await proDb.updateData(plist);
//                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Edit()));
//                     //Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context) => profile_002()), (route) => false)
//                     showDialog(BuildContext context) =>
//                         AlertDialog(
//                           title: Text("saved"),
//                           content: Text("insert data into database."),
//                         );
//                   }
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }