import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';   // 파이어베이스 기능 import 추가

class DbScreen extends StatefulWidget {
  static final String id = 'db_screen';  // 이 페이지의 id를 지정함.

  @override
  _DbScreenState createState() => _DbScreenState(); //하위 클래스 이름 정의
}

class _DbScreenState extends State<DbScreen> {
  //Class 이름과 동일하게 SettingScreen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Back'),
          backgroundColor: Colors.grey[800],
        ),
        body: Text('body'),

 /*
        body: StreamBuilder<QuerySnapshot>(          // 여기서 부터 DB 관련 코딩임.
          stream: Firestore.instance.collection('sipro').snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) return new Text('Error: ${snapshot.error}');
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return new Text('Loading…');
              default:
                return new ListView(
                  children:
                  snapshot.data.documents.map((DocumentSnapshot document) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: SizedBox(
                        height: 100,
                        child: ListTile(
                          leading: Text(document['team_name']),
                          title: Text(document['project_title']),
                          subtitle: Text(document['author'] +
                              " " +
                              "최근수정:" +
                              document['lastUpdated']
                                  .toDate()
                                  .toString()
                                  .substring(0, 10)),
                          onTap: () {
                            print(document['id']);
                          },
                          isThreeLine: true,
                        ),
                      ),
                    );
                  }).toList(),
                );
            }
          },
        ),


  */
/*
        floatingActionButton: Padding(      // 여기서부터 플로팅 버튼을 통해 DB 추가, 삭제, 수정 기능 추가
            padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FloatingActionButton.extended(
                  heroTag: "btn1",  // heroTag id가 없으면 본 화면 들어올 때 에러가 발생함.
                  onPressed: (){
                    Firestore.instance.collection('stard').document() // 각자가 생성한 DB명을 작성함. 여기서는 'stard'
                        .setData({ 'title': '추테스트', 'author': '재성', 'url':'https://search.naver.com/search.naver?where=image&query=%EC%95%84%EC%9D%B4%EC%9C%A0&merge=0&res_fr=0&res_to=0&sort=0&viewtype=0&site=&face=1&color=0&mcs=0&a_q=&n_q=&o_q=&sm=tab_etc', 'lastUpdated':DateTime.now() });},
                  label: Text('C'),
                  icon: Icon(Icons.move_to_inbox),
                ),
                FloatingActionButton.extended(
                  heroTag: "btn2",
                  onPressed: (){
                  },
                  label: Text('R'),
                  icon: Icon(Icons.move_to_inbox),
                ),
                FloatingActionButton.extended(
                  heroTag: "btn3",
                  onPressed: (){
                  },
                  label: Text('U'),
                  icon: Icon(Icons.move_to_inbox),
                ),
                FloatingActionButton.extended(
                  heroTag: "btn4",
                  onPressed: (){
                  },
                  label: Text('D'),
                  icon: Icon(Icons.move_to_inbox),
                ),
              ],
            ))
*/

    );
  }
}
