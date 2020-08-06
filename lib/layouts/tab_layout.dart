import 'package:flutter/material.dart';
import 'package:flutterappsiprorev0/screens/home_screen.dart';
import 'package:flutterappsiprorev0/screens/info_screen.dart';
import 'package:flutterappsiprorev0/screens/my_screen.dart';
import 'package:flutterappsiprorev0/screens/search_screen.dart';
import 'package:flutterappsiprorev0/screens/write_screen.dart';
//자신이 만든 프로젝트 경로명으로 변경 필요

class TabLayout extends StatefulWidget {
  static final String id = 'tab_layout';

  @override
  _TabLayoutState createState() => _TabLayoutState();
}

class _TabLayoutState extends State<TabLayout> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        //3회차에서 DefaultTabController로 변경
        length: 5,
        child: Scaffold(
          body: TabBarView(
            children: [
              HomeScreen(), //home_screen.dart 에서 HomeScreen()을 적용하면 에러 발생
              SearchScreen(), //search_screen.dart에서 정의
              WriteScreen(), //write_screen.dart 에서 정의
              InfoScreen(), //info_screen.dart에서 정의
              MyScreen(), //my_screen.dart 에서 정의
            ],
          ),
          bottomNavigationBar: Container(
              child: TabBar(tabs: [
            Tab(
                icon: Icon(
              Icons.home,
              color: Colors.cyan[600],
            )),
            Tab(
                icon: Icon(
              Icons.search,
              color: Colors.cyan[600],
            )),
            Tab(
                icon: Icon(
              Icons.note_add,
              color: Colors.cyan[600],
            )),
            Tab(
                icon: Icon(
              Icons.announcement,
              color: Colors.cyan[600],
            )),
            Tab(
                icon: Icon(
              Icons.portrait,
              color: Colors.cyan[600],
            )),
          ])),
        ));
  }
}
