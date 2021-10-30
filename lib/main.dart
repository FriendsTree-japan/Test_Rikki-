import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '00_admob_baner.dart';
import '01_Select.dart';
import '01_Edit.dart';
import '01_Setting.dart';
import 'profileDb.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyApp createState() => _MyApp();
}
  class _MyApp extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TabPage(0),
    );
  }
  @override
  void initState() {
    super.initState();
     // profileDb().createData_003();
     // profileDb().createData_005();
    profileDb().createData();
  }
}

class TabPage extends StatelessWidget {
  final _tab = <Tab> [
    Tab( text:'新規作成',icon: Icon(Icons.edit_sharp,color: Colors.black54)),
    Tab( text:'一覧', icon: Icon(Icons.app_registration,color: Colors.black54 )),
  ];

  @override
  int _screen = 0;
  TabPage(int curPage){
    this._screen = curPage;
  }
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: _screen,
      length: _tab.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(110.0),
          child:
        AppBar(
          backgroundColor: Colors.white,
           title: Text("Profile Book App",
               style: TextStyle(color: Colors.black54, fontSize: 18,)),
          automaticallyImplyLeading: false,
          bottom: TabBar(
            tabs: _tab,
            labelColor: Colors.black54,
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.menu,color: Colors.black54),
                onPressed: _launchURL
            ),
          ],
        ),),
        body: TabBarView(
          children: <Widget>[
            Select(),
            Edit(),
          ],
        ),
      ),
    );
  }
}

void _launchURL() async {
  const url = 'https://www.instagram.com/_friendstree_/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}