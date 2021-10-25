import 'package:flutter/material.dart';
import 'package:profile_box_test/02_profile_003.dart';
import 'package:profile_box_test/02_profile_005.dart';
import 'package:screenshot/screenshot.dart';
import 'main.dart';
import '01_Select.dart';
import 'package:sqflite/sqflite.dart';
import 'package:collection/collection.dart';
import 'package:path/path.dart';
import 'ProfileDetailes001.dart';
import 'profileDb.dart';
import 'profileShow.dart';


class Edit extends StatefulWidget {
  @override
  _Edit createState() => new _Edit();
}

class _Edit extends State<Edit> {
  Future<List<ProList>> result003 = profileDb().getDataList003() ;
  Future<List<ProList>> result005 = profileDb().getDataList005() ;
  ///    for (Map item in result) {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("プロフィール帳一覧"),
        ),
        body: FutureBuilder(
            future: result003,
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
                          child: (() {
                            if (prolists[index].tableName == 'profile_003'){
                            Column(
                            children: <Widget>[
                              ListTile(
                                title:
                                // ③オブジェクトの属性(タイトル属性)を参照する
                                Text(
                                  '${prolists[index].name_p003}',style: TextStyle(color: Colors.blue,fontSize: 20),
                                ),
                                subtitle:
                                Text(
                                    '${prolists[index].tableName}'
                                ),
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileDetailes(prolists[index].id_p003,prolists[index].name_p003,prolists[index].birth_p003,prolists[index].place_p003,prolists[index].bloodType_p003,prolists[index].favoriteThing_p003,prolists[index].free_p003,prolists[index].sliderValue1_p003,prolists[index].sliderValue2_p003,prolists[index].sliderValue3_p003,prolists[index].sliderValue4_p003,prolists[index].sliderValue5_p003)));
                                },
                                trailing: IconButton(
                                  icon: new Icon(Icons.delete),
                                  onPressed: () async{
                                    // 削除の確認ダイアログを表示
                                    profileShow proshow = new profileShow();
                                    await proshow.confirmDeleteDialog(prolists[index].id_p003,prolists[index].tableName,context);
                                  },
                                ),),],
                          );}else{
                              Column(
                                  children: <Widget>[
                                  ListTile(
                                  title:
                                  // ③オブジェクトの属性(タイトル属性)を参照する
                                  Text(
                                  '${prolists[index].name_p005}',style: TextStyle(color: Colors.blue,fontSize: 20),
                            ),
                            subtitle:
                            Text(
                            '${prolists[index].tableName}'
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileDetailes(prolists[index].id_p003,prolists[index].name_p003,prolists[index].birth_p003,prolists[index].place_p003,prolists[index].bloodType_p003,prolists[index].favoriteThing_p003,prolists[index].free_p003,prolists[index].sliderValue1_p003,prolists[index].sliderValue2_p003,prolists[index].sliderValue3_p003,prolists[index].sliderValue4_p003,prolists[index].sliderValue5_p003)));
                            },
                            trailing: IconButton(
                            icon: new Icon(Icons.delete),
                            onPressed: () async{
                            // 削除の確認ダイアログを表示
                            profileShow proshow = new profileShow();
                            await proshow.confirmDeleteDialog(prolists[index].id_p005,prolists[index].tableName,context);
                            },
                            ),),],
                              );
                          }
                          }()),
                        ),
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