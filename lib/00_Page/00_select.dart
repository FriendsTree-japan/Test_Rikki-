import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../01_Profile/01_profile_001.dart';
import '../01_Profile/01_profile_002.dart';
import '../01_Profile/01_profile_003.dart';
import '../99_Others/99_admob_baner.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double widgetHeightSize;
  static late double widgetWidthSize;
  static late double widgetPaddingSize;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);

    //デバイスのサイズを取得
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;

    //表示されるプロフィールのウィジェットの最大値を定義
    if (screenHeight > 700) {
      widgetWidthSize = screenWidth * 0.8;
      widgetHeightSize = screenHeight * 0.6;
    } else {
      widgetWidthSize = screenWidth * 0.6;
      widgetHeightSize = screenHeight * 0.6;
    }

    //各ウィジェット間のPaddingの値を定義
    if (screenHeight > 700) {
      widgetPaddingSize = 15.0;
    } else {
      widgetPaddingSize = 5.0;
    }
  }
}

class Select extends StatefulWidget {
  @override
  _SelectState createState() => _SelectState();
}

class _SelectState extends State<Select> {
  final List<String> imgList = [
    'images/select_profile_images/Profile001_App.jpg',
    'images/select_profile_images/Profile002_App.jpg',
    'images/select_profile_images/Profile003_App.jpg',
  ];
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(8.0)),
            Align(
                child: Text("プロフィール帳のタイプを選んでください",
                    style: TextStyle(
                      fontSize: 18,
                    ))),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                  height: SizeConfig.widgetHeightSize,
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
                    width: SizeConfig.widgetWidthSize,
                    height: SizeConfig.widgetHeightSize,
                    decoration: BoxDecoration(
                      // border: Border.all(
                      //   color: const Color(0xFF737373),
                      // ),
                      // borderRadius: BorderRadius.circular(5),
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
                                          profile_005.make()));
                              break;
                            case 1: //プルフィール帳2
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          profile_001.make()));
                              break;
                            case 2: //プルフィール帳2
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          profile_003.make()));
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
                        ? Color.fromRGBO(76, 175, 80, 1.0)
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
  }
}
