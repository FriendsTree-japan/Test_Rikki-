import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '01_Select.dart';
import '01_Edit.dart';
import '01_Send.dart';
import '01_Setting.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TabPage(),
    );
  }
}


class TabPage extends StatelessWidget {

  final _tab = <Tab> [
    Tab( text:'Create', icon: Icon(Icons.edit_sharp,color: Colors.black54)),
    Tab( text:'Edit', icon: Icon(Icons.app_registration,color: Colors.black54 )),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tab.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Profile Book App",
              style: TextStyle(color: Colors.black54, fontSize: 18,)),
          bottom: TabBar(
            tabs: _tab,
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.dehaze,color: Colors.black54),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Setting()));
                }
            ),
          ],
        ),

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