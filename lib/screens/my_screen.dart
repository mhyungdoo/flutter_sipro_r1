import 'package:flutter/material.dart';
import 'package:flutterappsiprorev0/layouts/tab_layout.dart';
import 'package:flutterappsiprorev0/screens/db_screen.dart';
import 'package:flutterappsiprorev0/screens/home_screen.dart';
import 'package:flutterappsiprorev0/screens/info_screen.dart';
import 'package:flutterappsiprorev0/screens/login_page.dart';

class MyScreen extends StatefulWidget {
  static final String id = 'my_screen';

  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sipro, Side Project Builder',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Center(
        child: Column(
          children: <Widget>[

            SizedBox(
              height: 20,
            ),


            RaisedButton(
              child: Text(
                'Notice',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.cyan,
              onPressed: () {
                Navigator.pushNamed(context, InfoScreen.id);
              },
            ),

            SizedBox(
              height: 20,
            ),

            RaisedButton(
              child: Text(
                'Go to Home',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.cyan,
              onPressed: () {
                Navigator.pushNamed(context, TabLayout.id);
              },
            ),

            RaisedButton(
              child: Text(
                'Log In',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.cyan,
              onPressed: () {
                Navigator.pushNamed(context, LoginPage.id);
              },
            ),


          ],
        ),
      ),
    ),

      floatingActionButton: FloatingActionButton(onPressed: null,
        child: Icon(Icons.add_a_photo),),

    );
  }
}

/*
              children: <Widget>[

            padding: const EdgeInsets.all(50.0),
            child: FlatButton(
              child: Text('시작페이지로 가기 from myscreen'),
              onPressed: () {
                Navigator.pushNamed(context, DbScreen.id);
              },
            ),

            child: FlatButton(
              child: Text('시작페이지로 가기 from myscreen'),
              onPressed: () {
                Navigator.pushNamed(context, DbScreen.id);
              },
            ),
              ]
          ), padding:,
        ));
  }
  */
