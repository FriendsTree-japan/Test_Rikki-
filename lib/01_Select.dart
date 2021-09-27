import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:profile_box_test/02_profile_002.dart';
import '02_profile_001.dart';
import '02_profile_002.dart';
import '02_profile_003.dart';
import '02_profile_004.dart';

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

  int _currentIndex2 = 0;
  final List<String> imgList2 = [
    'images/cat.jpeg',
    'images/cat2.jpeg',
    'images/cat3.jpeg',
  ];

  int _currentIndex3 = 0;
  final List<String> imgList3 = [
    'images/cat.jpeg',
    'images/cat2.jpeg',
    'images/cat3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[

              Text('昔ながらのプロフィール帳' ,style: TextStyle(color: Colors.black, fontSize: 20, )),
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
                            fit: BoxFit.cover,
                          )
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
              Padding(padding: EdgeInsets.all(20.0)),

              Text('ちょっと大人のプロフィール帳' ,style: TextStyle(color: Colors.black, fontSize: 20, )),
              CarouselSlider(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(
                          () {
                        _currentIndex2 = index;
                      },
                    );
                  },
                ),
                items: imgList2.map((e) =>
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
                children: imgList2.map((urlOfItem) {
                  int index = imgList2.indexOf(urlOfItem);
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex2 == index
                          ? Color.fromRGBO(0, 0, 0, 0.8)
                          : Color.fromRGBO(0, 0, 0, 0.3),
                    ),
                  );
                }).toList(),
              ),
              Padding(padding: EdgeInsets.all(20.0)),
              Text('推しメン・友人用のプロフィール帳' ,style: TextStyle(color: Colors.black, fontSize: 20, )),

              CarouselSlider(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(
                          () {
                        _currentIndex3 = index;
                      },
                    );
                  },
                ),
                items: imgList3.map((e) =>
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
                children: imgList3.map((urlOfItem) {
                  int index = imgList3.indexOf(urlOfItem);
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex3 == index
                          ? Color.fromRGBO(0, 0, 0, 0.8)
                          : Color.fromRGBO(0, 0, 0, 0.3),
                    ),
                  );
                }).toList(),
              ),

            ],
          ),
          ),
        ),
      ),
    );
  }
}
