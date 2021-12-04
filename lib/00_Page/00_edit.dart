import 'package:flutter/material.dart';
import '../01_Profile/01_profile_002.dart';
import '../02_DateBase/common/02_profile_db.dart';
import '../02_DateBase/common/02_profile_show.dart';

class Edit extends StatefulWidget {
  @override
  _Edit createState() => new _Edit();
}

class _Edit extends State<Edit> {
  Future<List<ProList>> result = profileDb().getDataList();

  ///    for (Map item in result) {
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color(0xFFFAF7F3),
        // appBar: AppBar(
        //   title: Text("プロフィール帳一覧"),
        // ),
        body: FutureBuilder(
            future: result,
            builder:
                (BuildContext context, AsyncSnapshot<List<ProList>> snapshot) {
              if (snapshot.connectionState != ConnectionState.done) {
                return new Align(
                    child: Center(
                  child: new CircularProgressIndicator(),
                ));
              } else if (snapshot.hasError) {
                return new Text('Error: ${snapshot.error}');
              } else if (snapshot.hasData) {
                final List<ProList> prolists = snapshot.data ?? <ProList>[];
                return Align(
                  // オブジェクト配列でカード表示を行う
                  alignment: Alignment.topCenter,
                  child: LimitedBox(
                    maxHeight: deviceHeight * 0.7,
                    maxWidth: deviceWidth,
                    child: ListView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(8),
                      // ②配列のデータ数分カード表示を行う
                      itemCount: prolists.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                            child: InkWell(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title:
                                    // ③オブジェクトの属性(タイトル属性)を参照する
                                    Text(
                                  '${prolists[index].saveName}',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 18),
                                ),
                                subtitle: Text(
                                  '${prolists[index].koshinYmd}',
                                  style: TextStyle(
                                      color: const Color(0xFF737373),
                                      fontSize: 12),
                                ),
                                onTap: () {
                                  if (prolists[index].tableName ==
                                      "profile003") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                profile_005.Details(
                                                    prolists[index].id,
                                                    prolists[index].saveName,
                                                    prolists[index].koshinYmd,
                                                    prolists[index].name,
                                                    prolists[index]
                                                        .nickName_p005,
                                                    prolists[index]
                                                        .birthYYYY_p005,
                                                    prolists[index]
                                                        .birthMM_p005,
                                                    prolists[index]
                                                        .birthDD_p005,
                                                    prolists[index]
                                                        .personality_p005,
                                                    prolists[index].skill_p005,
                                                    prolists[index].myBoom_p005,
                                                    prolists[index]
                                                        .recentThing_p005,
                                                    prolists[index].offDay_p005,
                                                    prolists[index]
                                                        .win1BillionYen_p005,
                                                    prolists[index].reborn_p005,
                                                    prolists[index].wish_p005,
                                                    prolists[index]
                                                        .myBestTheme1_p005,
                                                    prolists[index]
                                                        .teme1MyBest1_p005,
                                                    prolists[
                                                            index]
                                                        .teme1MyBest2_p005,
                                                    prolists[
                                                            index]
                                                        .teme1MyBest3_p005,
                                                    prolists[
                                                            index]
                                                        .myBestTheme2_p005,
                                                    prolists[index]
                                                        .teme2MyBest1_p005,
                                                    prolists[index]
                                                        .teme2MyBest2_p005,
                                                    prolists[index]
                                                        .teme2MyBest3_p005,
                                                    "1")));
                                  } else if (prolists[index].tableName ==
                                      "profile002") {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                profile_005.Details(
                                                    prolists[index].id,
                                                    prolists[index].saveName,
                                                    prolists[index].koshinYmd,
                                                    prolists[index].name,
                                                    prolists[index]
                                                        .nickName_p005,
                                                    prolists[index]
                                                        .birthYYYY_p005,
                                                    prolists[index]
                                                        .birthMM_p005,
                                                    prolists[index]
                                                        .birthDD_p005,
                                                    prolists[index]
                                                        .personality_p005,
                                                    prolists[index].skill_p005,
                                                    prolists[index].myBoom_p005,
                                                    prolists[index]
                                                        .recentThing_p005,
                                                    prolists[index].offDay_p005,
                                                    prolists[index]
                                                        .win1BillionYen_p005,
                                                    prolists[index].reborn_p005,
                                                    prolists[index].wish_p005,
                                                    prolists[index]
                                                        .myBestTheme1_p005,
                                                    prolists[index]
                                                        .teme1MyBest1_p005,
                                                    prolists[
                                                            index]
                                                        .teme1MyBest2_p005,
                                                    prolists[
                                                            index]
                                                        .teme1MyBest3_p005,
                                                    prolists[
                                                            index]
                                                        .myBestTheme2_p005,
                                                    prolists[index]
                                                        .teme2MyBest1_p005,
                                                    prolists[index]
                                                        .teme2MyBest2_p005,
                                                    prolists[index]
                                                        .teme2MyBest3_p005,
                                                    "1")));
                                  } else {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                profile_005.Details(
                                                    prolists[index].id,
                                                    prolists[index].saveName,
                                                    prolists[index].koshinYmd,
                                                    prolists[index].name,
                                                    prolists[index]
                                                        .nickName_p005,
                                                    prolists[index]
                                                        .birthYYYY_p005,
                                                    prolists[index]
                                                        .birthMM_p005,
                                                    prolists[index]
                                                        .birthDD_p005,
                                                    prolists[index]
                                                        .personality_p005,
                                                    prolists[index].skill_p005,
                                                    prolists[index].myBoom_p005,
                                                    prolists[index]
                                                        .recentThing_p005,
                                                    prolists[index].offDay_p005,
                                                    prolists[index]
                                                        .win1BillionYen_p005,
                                                    prolists[index].reborn_p005,
                                                    prolists[index].wish_p005,
                                                    prolists[index]
                                                        .myBestTheme1_p005,
                                                    prolists[index]
                                                        .teme1MyBest1_p005,
                                                    prolists[
                                                            index]
                                                        .teme1MyBest2_p005,
                                                    prolists[
                                                            index]
                                                        .teme1MyBest3_p005,
                                                    prolists[
                                                            index]
                                                        .myBestTheme2_p005,
                                                    prolists[index]
                                                        .teme2MyBest1_p005,
                                                    prolists[index]
                                                        .teme2MyBest2_p005,
                                                    prolists[index]
                                                        .teme2MyBest3_p005,
                                                    "1")));
                                  }
                                },
                                trailing: IconButton(
                                  icon: new Icon(Icons.delete),
                                  onPressed: () async {
                                    // 削除の確認ダイアログを表示
                                    profileShow proshow = new profileShow();
                                    await proshow.confirmDeleteDialog(
                                        prolists[index].id,
                                        prolists[index].tableName,
                                        context);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ));
                      },
                    ),
                  ),
                );
              } else {
                return Text("データが存在しません");
              }
            }));
  }
}
