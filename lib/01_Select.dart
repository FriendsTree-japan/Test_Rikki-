import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:profile_box_test/02_profile_002.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '00_admob_baner.dart';
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
    'images/profile003.png',
    'images/profile005.png',
    'images/profile006.png',
  ];
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F3),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(8.0)),
            Align(
                child: Text("プロフィール帳のタイプを選んでください",
                    style: TextStyle(fontSize: 18, color: const Color(0xFF737373),))),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                  height: 450.0,
                  initialPage: 0,
                  viewportFraction: 1,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              itemCount: imgList.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Container(
                    width:deviceWidth * 0.8,
                    height:deviceHeight,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF737373),),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ListTile(
                        title: Image.asset(
                          imgList[index],
                          fit: BoxFit.contain,
                        ),
                        onTap: () {
                          switch (index) {
                            case 0: //プルフィール帳1
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          profile_003.make()));
                              break;
                            case 1: //プルフィール帳2
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          profile_005.make()));
                              break;
                            case 2: //プルフィール帳2
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          profile_006.make()));
                              break;
                          }
                        }));
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.map((String a) {
                int index = imgList.indexOf(a);
                return Container(
                  width: 8.0,
                  height: 25.0,
                  margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Color.fromRGBO(115, 115, 115, 1.0)
                        : Color.fromRGBO(115, 115, 115, 1.0),
                  ),
                );
              }).toList(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AdBanner(size: AdSize.banner),
            )
          ]),
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
