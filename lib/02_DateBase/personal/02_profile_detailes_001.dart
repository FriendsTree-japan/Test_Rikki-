// import 'package:flutter/material.dart';
// import 'package:screenshot/screenshot.dart';
// import 'main.dart';
// import '00_select.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:collection/collection.dart';
// import 'package:path/path.dart';
// import '02_profile_db.dart';
// import '00_edit.dart';
//
//   class ProfileDetailes extends StatefulWidget {
//   final int id;
//   final String name;
//   final String birth;
//   final String place;
//   final String bloodType;
//   final String favoriteThing;
//   final String free;
//   final double _sliderValue1;
//   final double _sliderValue2;
//   final double _sliderValue3;
//   final double _sliderValue4;
//   final double _sliderValue5;
//
//   ProfileDetailes(this.id,this.name,this.birth,this.place,this.bloodType,this.favoriteThing,this.free,this._sliderValue1,this._sliderValue2,this._sliderValue3,this._sliderValue4,this._sliderValue5);
//
//   @override
//   _ProfileDetailes createState() => _ProfileDetailes();
//   }
//
// class _ProfileDetailes extends State<ProfileDetailes> {
//
//   //プロフィール帳①質問回答項目
//   TextEditingController nameController = TextEditingController();
//   TextEditingController birthController = TextEditingController();
//   TextEditingController placeController = TextEditingController();
//   TextEditingController bloodTypeController = TextEditingController();
//   TextEditingController favoriteThingController = TextEditingController();
//   TextEditingController freeController = TextEditingController();
//   late int id;
//   late double _sliderValue1;
//   late double _sliderValue2;
//   late double _sliderValue3;
//   late double _sliderValue4;
//   late double _sliderValue5;
//   var _labelText = 'Select value';
//
//   void initState() {
//     super.initState();
//      this.nameController = new TextEditingController(text: widget.name);
//      this.birthController = new TextEditingController(text: widget.birth);
//      this.placeController = new TextEditingController(text: widget.place);
//      this.bloodTypeController = new TextEditingController(text: widget.bloodType);
//      this.favoriteThingController = new TextEditingController(text: widget.favoriteThing);
//      this.freeController = new TextEditingController(text: widget.free);
//      this.id = widget.id;
//      this._sliderValue1 = widget._sliderValue1;
//      this._sliderValue2 = widget._sliderValue2;
//      this._sliderValue3 = widget._sliderValue3;
//      this._sliderValue4 = widget._sliderValue4;
//      this._sliderValue5 = widget._sliderValue5;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           mainAxisSize: MainAxisSize.max,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: <Widget>[
//                   Column(
//                       children: <Widget>[
//                         Align(
//                           child:Container(
//                             child:Image.asset(
//                                 'images/cat.jpeg', width: 150
//                             ),
//                             padding: EdgeInsets.fromLTRB(5.0, 5.0, 10.0, 5.0),
//                           ),
//                         ),
//                       ]
//                   ),
//
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Container(
//                         child: TextField(
//                           controller: nameController,
//                           decoration: const InputDecoration(
//                             border: OutlineInputBorder(),
//                             labelText: '名前（あだ名）',
//                             filled: true,
//                             fillColor: Color(0xFFEEA1FF),
//                           ),
//                         ),
//                         width: 200,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Column(
//                   children: <Widget>[
//                     Container(
//                       child: TextField(
//                         controller: birthController,
//                         decoration: const InputDecoration(
//                           border: OutlineInputBorder(),
//                           labelText: '生年月日',
//                         ),
//                       ),
//                       width: 100,
//                     ),
//                   ],
//                 ),
//                 Padding(padding: EdgeInsets.all(10.0)),
//                 Column(
//                   children: <Widget>[
//                     Container(
//                       child: TextField(
//                         controller: placeController,
//                         decoration: const InputDecoration(
//                           border: OutlineInputBorder(),
//                           labelText: '出身地',
//                         ),
//                       ),
//                       width: 100,
//                     ),
//                   ],
//                 ),
//                 Padding(padding: EdgeInsets.all(10.0)),
//                 Column(
//                   children: <Widget>[
//                     Container(
//                       child: TextField(
//                         controller: bloodTypeController,
//                         decoration: const InputDecoration(
//                           border: OutlineInputBorder(),
//                           labelText: '血液型',
//                         ),
//                       ),
//                       width: 100,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//
//             Padding(padding: EdgeInsets.only(top: 10.0)),
//
//             Container(
//               child: TextField(
//                 controller: favoriteThingController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: '好きなもの・こと',
//                 ),
//               ),
//               padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
//             ),
//
//             Container(
//               padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
//               child: Container(
//                 color: Color(0xFFF3D9F8),
//                 child:
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Container(
//                       alignment: Alignment.bottomLeft,
//                       child: Text('あなたはどっち派?' ,style: TextStyle(color: Colors.black54, fontSize: 16, fontWeight: FontWeight.bold)),
//                     ),
//
//                     Container(
//                       alignment: Alignment.bottomLeft,
//                       child: Text('「犬」派?、「猫」派?' ,style: TextStyle(color: Colors.black54, fontSize: 10,)),
//                     ),
//
//                     Slider(
//                       value: _sliderValue1,
//                       min: 0,
//                       max: 100,
//                       divisions: 5,
//                       onChanged: (double value) {
//                         setState(() {
//                           _sliderValue1 = value.roundToDouble();
//                           _labelText = 'value = $_sliderValue1';
//                         });
//                       },
//                     ),
//
//                     Align(
//                       alignment: Alignment.bottomLeft,
//                       child: Text('「思いやり」派?、「論理に忠実」派?',style: TextStyle(color: Colors.black54, fontSize: 10,)),
//                     ),
//
//                     Slider(
//                       value: _sliderValue2,
//                       min: 0,
//                       max: 100,
//                       divisions: 5,
//                       onChanged: (double value) {
//                         setState(() {
//                           _sliderValue2 = value.roundToDouble();
//                           _labelText = 'value = $_sliderValue2';
//                         });
//                       },
//                     ),
//                     Align(
//                       alignment: Alignment.bottomLeft,
//                       child: Text('業務は、「スピードが大事」派?、「品質が大事」派?',style: TextStyle(color: Colors.black54, fontSize: 10,)),
//                     ),
//
//                     Slider(
//                       value: _sliderValue3,
//                       min: 0,
//                       max: 100,
//                       divisions: 5,
//                       onChanged: (double value) {
//                         setState(() {
//                           _sliderValue3 = value.roundToDouble();
//                           _labelText = 'value = $_sliderValue3';
//                         });
//                       },
//                     ),
//
//                     Align(
//                       alignment: Alignment.bottomLeft,
//                       child: Text('「色んなことに挑戦」派?、「一つのことを追求」派?',style: TextStyle(color: Colors.black54, fontSize: 10,)),
//                     ),
//
//                     Slider(
//                       value: _sliderValue4,
//                       min: 0,
//                       max: 100,
//                       divisions: 5,
//                       onChanged: (double value) {
//                         setState(() {
//                           _sliderValue4 = value.roundToDouble();
//                           _labelText = 'value = $_sliderValue4';
//                         });
//                       },
//                     ),
//
//                     Align(
//                       alignment: Alignment.bottomLeft,
//                       child: Text('大切にしたいのは、「仕事」派?、「家庭」派?',style: TextStyle(color: Colors.black54, fontSize: 10,)),
//                     ),
//
//                     Slider(
//                       value: _sliderValue5,
//                       min: 0,
//                       max: 100,
//                       divisions: 5,
//                       onChanged: (double value) {
//                         setState(() {
//                           _sliderValue5 = value.roundToDouble();
//                           _labelText = 'value = $_sliderValue5';
//                         });
//                       },
//                     ),
//                   ],
//
//                 ),
//               ),
//             ),
//             Container(
//               child: TextField(
//                 controller: freeController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'フリースペース',
//                 ),
//               ),
//               padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
//             ),
//               Align(
//                   alignment: Alignment.bottomRight,
//                   child: ElevatedButton(
//                   child: Text('更新'),
//                   onPressed: () async {
//                     profileDb proDb = new profileDb();
//                     String name = nameController.text;
//                     String birth = birthController.text;
//                     String place = placeController.text;
//                     String bloodType = bloodTypeController.text;
//                     String favoriteThing = favoriteThingController.text;
//                     String free = freeController.text;
//
//                     ProList plist = new ProList.ProList_003(id: id,saveName: saveName, name: name,birth_p003: birth,place_p003: place,bloodType_p003: bloodType,favoriteThing_p003: favoriteThing,free_p003: free,sliderValue1_p003: _sliderValue1,sliderValue2_p003:_sliderValue2,sliderValue3_p003: _sliderValue3,sliderValue4_p003: _sliderValue4,sliderValue5_p003: _sliderValue5);
//                     await proDb.updateData003(plist);
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
//             Align(
//               alignment: Alignment.bottomRight,
//               child: ElevatedButton(
//                   child: Text('戻る'),
//                   onPressed: () {
//                     Navigator.push(
//                         context, MaterialPageRoute(builder: (context) => MyApp()));
//                   }
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }