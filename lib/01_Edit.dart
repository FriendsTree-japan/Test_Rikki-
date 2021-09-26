import 'package:flutter/material.dart';


class Edit extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: RaisedButton(
                child: Text('保存したプロフィール帳①'),
                onPressed: () {
                  Navigator.pop(context);
                }
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: RaisedButton(
                child: Text('保存したプロフィール帳②'),
                onPressed: () {
                  Navigator.pop(context);
                }
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: RaisedButton(
                child: Text('保存したプロフィール帳③'),
                onPressed: () {
                  Navigator.pop(context);
                }
            ),
          ),

          Align(
            alignment: Alignment.center,
            child:  Text('的な感じで積み上げていく。'),
          ),

        ],
      ),
    );
  }
}