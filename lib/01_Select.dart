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
  final List<String> imgList = [
    'images/cat.jpeg',
    'images/cat2.jpeg',
    'images/cat3.jpeg',
  ];
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(20.0)),
            CarouselSlider.builder(
              options: CarouselOptions(
                  height: 200.0,
                  initialPage: 0,
                  viewportFraction: 1,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }
              ),
              itemCount: imgList.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return ListTile(
                    title:
                    Image.asset(
                      imgList[index],
                    ),
                    onTap: () {
                      switch (index) {
                        case 0 : //プルフィール帳1
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => profile_005()));
                          break;
                        case 1 : //プルフィール帳2
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => profile_006()));
                          break;
                        case 2 : //プルフィール帳2
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => profile_007()));
                          break;
                      }
                    }
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.map((String a) {
                int index = imgList.indexOf(a);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
          ]
      ),
    );
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           children: <Widget>[
    //             Text('ちょっと大人の' ,style: TextStyle(color: Colors.lightGreen, fontSize: 25, )),
    //             Text('のプロフィール帳', style: TextStyle(fontSize: 20)),
    //           ],
    //         ),
    //       ],
    //     ),
    //   );
    // }
  }
}