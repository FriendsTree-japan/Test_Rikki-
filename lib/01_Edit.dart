import 'package:flutter/material.dart';
import 'package:profile_box_test/02_profile_006.dart';
import 'package:screenshot/screenshot.dart';
import 'main.dart';
import '01_Select.dart';
import 'package:sqflite/sqflite.dart';
import 'package:collection/collection.dart';
import 'package:path/path.dart';
import 'profileDb.dart';
import 'profileShow.dart';
import '02_profile_005.dart';
import '02_profile_003.dart';


class Edit extends StatefulWidget {
  @override
  _Edit createState() => new _Edit();
}

class _Edit extends State<Edit> {
  Future<List<ProList>> result = profileDb().getDataList() ;

  ///    for (Map item in result) {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("プロフィール帳一覧"),
        ),
        body: FutureBuilder(
            future: result,
            builder: (BuildContext context,AsyncSnapshot<List<ProList>> snapshot){
              if (snapshot.connectionState != ConnectionState.done){
                return new Align(
                    child: Center(
                      child: new CircularProgressIndicator(),
                    )
                );
              } else if (snapshot.hasError) {
                return new Text('Error: ${snapshot.error}');
              } else if (snapshot.hasData){
                final List<ProList> prolists = snapshot.data ?? <ProList>[];
                return Align(
                  // オブジェクト配列でカード表示を行う
                  alignment: Alignment.topCenter,
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    // ②配列のデータ数分カード表示を行う
                    itemCount: prolists.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: InkWell(
                          child:
                            Column(
                            children: <Widget>[
                              ListTile(
                                title:
                                // ③オブジェクトの属性(タイトル属性)を参照する
                                Text(
                                  '${prolists[index].name}',style: TextStyle(color: Colors.blue,fontSize: 20),
                                ),
                                subtitle:
                                Text(
                                    '${prolists[index].tableName}'
                                ),
                                onTap: (){
                                  if(prolists[index].tableName == "profile003"){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => profile_003.Details(prolists[index].id,prolists[index].name,prolists[index].birth_p003,prolists[index].place_p003,prolists[index].bloodType_p003,prolists[index].favoriteThing_p003,prolists[index].free_p003,prolists[index].sliderValue1_p003,prolists[index].sliderValue2_p003,prolists[index].sliderValue3_p003,prolists[index].sliderValue4_p003,prolists[index].sliderValue5_p003,"1")));
                                  }else if(prolists[index].tableName == "profile005"){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => profile_005.Details(prolists[index].id, prolists[index].name, prolists[index].nickName_p005, prolists[index].birthYYYY_p005, prolists[index].birthMM_p005, prolists[index].birthDD_p005, prolists[index].personality_p005, prolists[index].skill_p005, prolists[index].myBoom_p005, prolists[index].recentThing_p005, prolists[index].offDay_p005, prolists[index].win1BillionYen_p005, prolists[index].reborn_p005, prolists[index].wish_p005, prolists[index].myBestTheme1_p005,prolists[index].teme1MyBest1_p005, prolists[index].teme1MyBest2_p005, prolists[index].teme1MyBest3_p005, prolists[index].myBestTheme2_p005, prolists[index].teme2MyBest1_p005, prolists[index].teme2MyBest2_p005, prolists[index].teme2MyBest3_p005,"1")));
                                  }else{
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => profile_006.Details(prolists[index].id, prolists[index].name, prolists[index].birthYYYY_p006, prolists[index].birthMM_p006, prolists[index].birthDD_p006, prolists[index].place_p006, prolists[index].nickName_p006, prolists[index].hobby_p006, prolists[index].skill_p006, prolists[index].myBoom_p006, prolists[index].offDay_p006, prolists[index].favoriteFood_p006, prolists[index].favoriteMovie_p006, prolists[index].favoriteAnime_p006, prolists[index].favoriteTv_p006, prolists[index].favoriteYouTube_p006, prolists[index].favoritePlace_p006, "1")));
                                  }
                                },
                                trailing: IconButton(
                                  icon: new Icon(Icons.delete),
                                  onPressed: () async{
                                    // 削除の確認ダイアログを表示
                                    profileShow proshow = new profileShow();
                                    await proshow.confirmDeleteDialog(prolists[index].id,prolists[index].tableName,context);
                                  },
                                ),),],
                        ),
                      )
                      );
                    },
                  ),
                );
              }else{
                return Text("データが存在しません");
              }
            }
        )
    );
  }
}