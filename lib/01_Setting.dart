import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '01_Select.dart';//Programを通すために入れているだけなので、後で消します。

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}


class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Align(
            alignment: Alignment.center,
            child: RaisedButton(
                child: Text('利用規約'),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Select()));
                }
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: RaisedButton(
                child: Text('各種お問い合わせ'),
                onPressed:_launchURL
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: RaisedButton(
                child: Text('戻る'),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Select()));
                }
            ),
          ),

        ],
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