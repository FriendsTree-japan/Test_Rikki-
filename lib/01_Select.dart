import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:profile_box_test/02_profile_002.dart';
import '02_profile_001.dart';
import '02_profile_002.dart';
import '02_profile_003.dart';
import '02_profile_004.dart';
import '02_profile_005.dart';
import '02_profile_006.dart';
import '02_profile_007.dart';
import '02_profile_008.dart';
import '02_profile_009.dart';
import '02_profile_010.dart';
import '02_profile_011.dart';

class Select extends StatefulWidget {
  @override
  _SelectState createState() => _SelectState();
}


class _SelectState extends State<Select> {
  int _currentIndex = 0;
  final List<String> imgList = [
    'images/cat.jpeg',
    'images/cat2.jpeg',
    'images/cat3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              CarouselSlider(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(
                          () {
                        _currentIndex = index;
                      },
                    );
                  },
                ),
                items: imgList.map((e) =>
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Image.asset(e,
                            width: 1050,
                            height: 350,
                            fit: BoxFit.cover,)
                        ],
                      ),
                    )).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.map((urlOfItem) {
                  int index = imgList.indexOf(urlOfItem);
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index
                          ? Color.fromRGBO(0, 0, 0, 0.8)
                          : Color.fromRGBO(0, 0, 0, 0.3),
                    ),
                  );
                }).toList(),
              ),
              Align(
                alignment: Alignment.center,
                child: RaisedButton(
                    child: Text('テスト'),
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => profile_011()));
                    }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}