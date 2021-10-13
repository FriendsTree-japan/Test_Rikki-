import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '01_Select.dart';//Programを通すために入れているだけなので、後で消します。

class Send extends StatefulWidget {
  @override
  _SendState createState() => _SendState();
}


class _SendState extends State<Send> {
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
                child: Text('作成したプロフィール帳を共有'),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Select()));
                }
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: RaisedButton(
                child: Text('プロフィール帳の作成を依頼する'),
                onPressed:_launchURL
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