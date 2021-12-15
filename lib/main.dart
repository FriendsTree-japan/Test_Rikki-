import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '00_Page/00_select.dart';
import '00_Page/00_edit.dart';
import '02_DateBase/common/02_profile_db.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
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

enum WhyFarther { manual, FAQ }

class TabPage extends StatelessWidget {
  final _tab = <Tab>[
    Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.edit_sharp, size: 16),
          Text('　新規作成'),
        ],
      ),
    ),
    Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.app_registration, size: 16),
          Text('　一覧'),
        ],
      ),
    ),
  ];

  @override
  int _screen = 0;

  TabPage(int curPage) {
    this._screen = curPage;
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: _screen,
      length: _tab.length,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0),
            child: PreferredSize(
              preferredSize: Size.fromHeight(40.0),
              child: AppBar(
                title: Text("Profile Book App",
                    style: TextStyle(
                      color: const Color(0xFF737373),
                      fontSize: 18,
                      fontFamily: 'Nicofont',
                    )),
                iconTheme: const IconThemeData(
                  color: const Color(0xFF737373),
                ),
                backgroundColor: const Color(0xFFFFFFFF),
                bottom: TabBar(
                  tabs: _tab,
                  labelColor: const Color(0xFF737373),
                  unselectedLabelColor: const Color(0xFF737373),
                  indicatorColor: const Color(0xFF737373),
                ),
              ),
            )),
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            Container(
              height: 60.0,
              child: DrawerHeader(
                child: Text("メニュー"),
                decoration: BoxDecoration(),
              ),
            ),
            ListTile(
              title: Text('操作手順書',
                  style: TextStyle(
                    color: const Color(0xFF737373),
                  )),
              onTap: _manualURL,
            ),
            ListTile(
              title: Text('問い合わせ',
                  style: TextStyle(
                    color: const Color(0xFF737373),
                  )),
              onTap: _FAQURL,
            ),
            ListTile(
              title: Text('利用規約',
                  style: TextStyle(
                    color: const Color(0xFF737373),
                  )),
              onTap: _rulesURL,
            ),
            ListTile(
              title: Text('ソフトウェアライセンス',
                  style: TextStyle(
                    color: const Color(0xFF737373),
                  )),
              onTap: () => showLicensePage(
                context: context,
                applicationName: 'ProfileBookApp',
                applicationVersion: '1.0.0',
              ),
            )
          ],
        )),
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

void _manualURL() async {
  const url =
      'https://dented-handball-204.notion.site/0fae7630d2d44c23afab34d9983a9eca';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _FAQURL() async {
  const url =
      'https://dented-handball-204.notion.site/e9fd0cbcaa7b44539a6c82503b7be669';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _rulesURL() async {
  const url =
      'https://dented-handball-204.notion.site/303e688e5ef44507be7895bab4127b39';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
