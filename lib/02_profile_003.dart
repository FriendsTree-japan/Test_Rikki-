import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'main.dart';
import '01_Select.dart';
import 'profileDb.dart';
import 'CreateImage.dart';
import '01_Edit.dart';
import 'profileShow.dart';
import 'package:intl/intl.dart';

class profile_003 extends StatefulWidget {
  late final int id;
  late final String saveName;
  late final String koshinYmd;
  late final String name;
  late final String birth;
  late final String place;
  late final String bloodType;
  late final String favoriteThing;
  late final String free;
  late final double _sliderValue1;
  late final double _sliderValue2;
  late final double _sliderValue3;
  late final double _sliderValue4;
  late final double _sliderValue5;
  late final String koshinFlg;

  profile_003.Details(this.id, this.saveName, this.koshinYmd, this.name, this.birth, this.place,
      this.bloodType, this.favoriteThing, this.free, this._sliderValue1,
      this._sliderValue2, this._sliderValue3, this._sliderValue4,
      this._sliderValue5, this.koshinFlg);

  profile_003.make(){
    this.id = 0;
    this.saveName = "";
    this.koshinYmd = "";
    this.name = "";
    this.birth = "";
    this.place = "";
    this.bloodType = "";
    this.favoriteThing = "";
    this.free = "";
    this._sliderValue1 = 0.0;
    this._sliderValue2 = 0.0;
    this._sliderValue3 = 0.0;
    this._sliderValue4 = 0.0;
    this._sliderValue5 = 0.0;
    this.koshinFlg = "0";
  }

  @override
  _profile_003 createState() => _profile_003();
}


class _profile_003 extends State<profile_003> {
  //プロフィール帳3質問回答項目
  var nameController = TextEditingController();
  var birthController = TextEditingController();
  var placeController = TextEditingController();
  var bloodTypeController = TextEditingController();
  var favoriteThingController = TextEditingController();
  var freeController = TextEditingController();

  late int id;
  late String koshinFlg;
  late String saveName;

  //スライダー値更新
  var _sliderValue1 = 0.0;
  var _sliderValue2 = 0.0;
  var _sliderValue3 = 0.0;
  var _sliderValue4 = 0.0;
  var _sliderValue5 = 0.0;
  var _labelText = 'Select value';

  void initState() {
    super.initState();
    this.saveName = widget.saveName;
    this.nameController = new TextEditingController(text: widget.name);
    this.birthController = new TextEditingController(text: widget.birth);
    this.placeController = new TextEditingController(text: widget.place);
    this.bloodTypeController =
    new TextEditingController(text: widget.bloodType);
    this.favoriteThingController =
    new TextEditingController(text: widget.favoriteThing);
    this.freeController = new TextEditingController(text: widget.free);
    this.id = widget.id;
    this._sliderValue1 = widget._sliderValue1;
    this._sliderValue2 = widget._sliderValue2;
    this._sliderValue3 = widget._sliderValue3;
    this._sliderValue4 = widget._sliderValue4;
    this._sliderValue5 = widget._sliderValue5;
    this.koshinFlg = widget.koshinFlg;
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
        // brightness: Brightness.dark,
        primaryIconTheme: const IconThemeData.fallback().copyWith(
      color: Colors.black,
    ),
    ),
    home:Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.white,
    title: Text("Profile Book App",
    style: TextStyle(
    color: Color(0x86D400FA),
    fontSize: 18,
    )),
    //戻るボタン
    leading: new IconButton(
    icon: new Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TabPage(1))),
    ),
    //保存/共有ボタン
    actions: <Widget>[
    IconButton(
    icon: Icon(Icons.save_alt, color: Colors.black),
    onPressed: () {
    showDialog(
    context: context,
    builder: (childContext) {
    return SimpleDialog(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
    borderRadius:
    BorderRadius.all(Radius.circular(20))),
    children: <Widget>[
    SimpleDialogOption(
    onPressed: ()async{
    profileDb proDb = new profileDb();
    String name = nameController.text;
    String birth = birthController.text;
    String place = placeController.text;
    String bloodType = bloodTypeController.text;
    String favoriteThing = favoriteThingController.text;
    String free = freeController.text;
    DateTime now = DateTime.now();
    DateFormat outputFormat = DateFormat('yyyy/MM/dd HH:mm');
    String date = outputFormat.format(now);

    if(koshinFlg == "1") {
    ProList plist = new ProList.ProList_003(id: id,
    saveName: saveName,
    koshinYmd: date,
    name: name,
    birth_p003: birth,
    place_p003: place,
    bloodType_p003: bloodType,
    favoriteThing_p003: favoriteThing,
    free_p003: free,
    sliderValue1_p003: _sliderValue1,
    sliderValue2_p003: _sliderValue2,
    sliderValue3_p003: _sliderValue3,
    sliderValue4_p003: _sliderValue4,
    sliderValue5_p003: _sliderValue5);
    await proDb.updateData003(plist);
    Navigator.pop(childContext);
    }else {
    await profileShow().saveDialog003(context,name,birth,place,bloodType,favoriteThing,free,_sliderValue1,_sliderValue2,_sliderValue3,_sliderValue4,_sliderValue5);
    Navigator.pop(childContext);
    }
    },
    child: Center(
    child: Text(
    "プロジェクトとして保存",
    textAlign: TextAlign.center,
    ),
    ),
    ),
    Divider(color: Colors.black),
    SimpleDialogOption(
    onPressed: () {
    saveImage _saveImage = saveImage();
    _saveImage.saveLocalImage(convertWidgetToImageKey);
    Navigator.pop(childContext);
    },
    child: Center(
    child: Text(
    "写真として保存",
    textAlign: TextAlign.center,
    ),
    ),
    ),
    Divider(color: Colors.black),
    SimpleDialogOption(
    onPressed: () {
    shareProvider _shareProvider = shareProvider();
    _shareProvider.shareImageAndText('test', convertWidgetToImageKey);
    },
    child: Center(
    child: Text(
    "宛先を指定してシェア",
    textAlign: TextAlign.center,
    ),
    ),
    ),
    Divider(color: Colors.black),
    SimpleDialogOption(
    onPressed: () {
    Navigator.pop(childContext);
    },
    child: Center(
    child: Text(
    'キャンセル',
    textAlign: TextAlign.center,
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.red),
    ),
    ),
    ),
    ],
    );
    },
    );
    },
    )
    ]),
    body: RepaintBoundary(key:convertWidgetToImageKey,child:SingleChildScrollView(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    ),
    SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
    children: <Widget>[
    Column(
    children: <Widget>[
    Align(
    child:Container(
    child:Image.asset(
    'images/cat.jpeg', width: 150
    ),
    padding: EdgeInsets.fromLTRB(5.0, 5.0, 10.0, 5.0),
    ),
    ),
    ]
    ),

    Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Container(
    child: TextField(
    controller: nameController,
    decoration: const InputDecoration(
    border: OutlineInputBorder(),
    labelText: '名前（あだ名）',
    filled: true,
    fillColor: Color(0xFFEEA1FF),
    ),
    ),
    width: 200,
    ),
    ],
    ),
    ],
    ),
    ),

    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Column(
    children: <Widget>[
    Container(
    child: TextField(
    controller: birthController,
    decoration: const InputDecoration(
    border: OutlineInputBorder(),
    labelText: '生年月日',
    ),
    ),
    width: 100,
    ),
    ],
    ),
    Padding(padding: EdgeInsets.all(10.0)),
    Column(
    children: <Widget>[
    Container(
    child: TextField(
    controller: placeController,
    decoration: const InputDecoration(
    border: OutlineInputBorder(),
    labelText: '出身地',
    ),
    ),
    width: 100,
    ),
    ],
    ),
    Padding(padding: EdgeInsets.all(10.0)),
    Column(
    children: <Widget>[
    Container(
    child: TextField(
    controller: bloodTypeController,
    decoration: const InputDecoration(
    border: OutlineInputBorder(),
    labelText: '血液型',
    ),
    ),
    width: 100,
    ),
    ],
    ),
    ],
    ),

    Padding(padding: EdgeInsets.only(top: 10.0)),

    Container(
    child: TextField(
    controller: favoriteThingController,
    decoration: const InputDecoration(
    border: OutlineInputBorder(),
    labelText: '好きなもの・こと',
    ),
    ),
    padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
    ),

    Container(
    padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
    child: Container(
    color: Color(0xFFF3D9F8),
    child:
    Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Container(
    alignment: Alignment.bottomLeft,
    child: Text('あなたはどっち派?' ,style: TextStyle(color: Colors.black54, fontSize: 16, fontWeight: FontWeight.bold)),
    ),

    Container(
    alignment: Alignment.bottomLeft,
    child: Text('「犬」派?、「猫」派?' ,style: TextStyle(color: Colors.black54, fontSize: 10,)),
    ),

    Slider(
    value: _sliderValue1,
    min: 0,
    max: 100,
    divisions: 5,
    onChanged: (double value) {
    setState(() {
    _sliderValue1 = value.roundToDouble();
    _labelText = 'value = $_sliderValue1';
    });
    },
    ),

    Align(
    alignment: Alignment.bottomLeft,
    child: Text('「思いやり」派?、「論理に忠実」派?',style: TextStyle(color: Colors.black54, fontSize: 10,)),
    ),

    Slider(
    value: _sliderValue2,
    min: 0,
    max: 100,
    divisions: 5,
    onChanged: (double value) {
    setState(() {
    _sliderValue2 = value.roundToDouble();
    _labelText = 'value = $_sliderValue2';
    });
    },
    ),
    Align(
    alignment: Alignment.bottomLeft,
    child: Text('業務は、「スピードが大事」派?、「品質が大事」派?',style: TextStyle(color: Colors.black54, fontSize: 10,)),
    ),

    Slider(
    value: _sliderValue3,
    min: 0,
    max: 100,
    divisions: 5,
    onChanged: (double value) {
    setState(() {
    _sliderValue3 = value.roundToDouble();
    _labelText = 'value = $_sliderValue3';
    });
    },
    ),

    Align(
    alignment: Alignment.bottomLeft,
    child: Text('「色んなことに挑戦」派?、「一つのことを追求」派?',style: TextStyle(color: Colors.black54, fontSize: 10,)),
    ),

    Slider(
    value: _sliderValue4,
    min: 0,
    max: 100,
    divisions: 5,
    onChanged: (double value) {
    setState(() {
    _sliderValue4 = value.roundToDouble();
    _labelText = 'value = $_sliderValue4';
    });
    },
    ),

    Align(
    alignment: Alignment.bottomLeft,
    child: Text('大切にしたいのは、「仕事」派?、「家庭」派?',style: TextStyle(color: Colors.black54, fontSize: 10,)),
    ),

    Slider(
    value: _sliderValue5,
    min: 0,
    max: 100,
    divisions: 5,
    onChanged: (double value) {
    setState(() {
    _sliderValue5 = value.roundToDouble();
    _labelText = 'value = $_sliderValue5';
    });
    },
    ),
    ],

    ),
    ),
    ),
    Container(
    child: TextField(
    controller: freeController,
    decoration: const InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'フリースペース',
    ),
    ),
    ),
    ],
    ),
    ),
    ),
    ),);
  }
}
