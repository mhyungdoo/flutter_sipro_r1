import 'package:flutter/material.dart';
import 'package:flutterappsiprorev0/layouts/tab_layout.dart';
import 'package:flutterappsiprorev0/screens/db_screen.dart';
import 'package:flutterappsiprorev0/screens/home_screen.dart';
import 'package:flutterappsiprorev0/screens/info_screen.dart';
import 'package:flutterappsiprorev0/screens/login_page.dart';
import 'package:flutterappsiprorev0/screens/my_screen.dart';
import 'package:flutterappsiprorev0/screens/search_screen.dart';
import 'package:flutterappsiprorev0/screens/write_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sipro, Side Project',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.cyan[600],
        accentColor: Colors.cyan[700],
        // Define the default font family.
        fontFamily: 'Noto Sans',
      ),
      debugShowCheckedModeBanner: false,
      home: TabLayout(),
      routes: {        //라우트는 해당 화면으로 가라는 의미
        HomeScreen.id: (context) => HomeScreen(),  //시작하는 HomeScreen 함수는 있어야 함.
        SearchScreen.id: (context) => SearchScreen(),
        WriteScreen.id: (context) => WriteScreen(),
        InfoScreen.id: (context) => InfoScreen(), //MapScreen Class는 map_screen.dart에 정의함, 이 코드는 없어도 정상 실행됨.
        MyScreen.id: (context) => MyScreen(),
        TabLayout.id: (context) => TabLayout(),
        DbScreen.id: (context) => DbScreen(),
        LoginPage.id: (context) => LoginPage(),


      //  NoticePage.id: (context) => NoticePage(),
      //  ProjectGuide.id: (context) => ProjectGuide(),//새로운 페이지를 만들어 줄 때마다 여기에 불러와줘야 함.
      },
    );
  }
}
