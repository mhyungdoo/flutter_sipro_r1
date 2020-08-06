import 'package:flutter/material.dart';
import 'package:flutterappsiprorev0/layouts/tab_layout.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // 파이어베이스 기능 import 추가

class SearchScreen extends StatefulWidget {
  static final String id = 'search_screen';

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        // 여기서 부터 DB 관련 코딩임.
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
                      height: 100.0,
                      child: ListTile(
                        leading: Image.network(document['url']),
                        // 이미지 불러오기
                        // leading: Text(document['job_type']),
                        title: Text(document['title']),
                        subtitle: Text(document['author'] +
                            " " +
                            "Start Date:" +
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
    );
  }
}
