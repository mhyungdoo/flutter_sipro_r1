import 'package:flutter/material.dart';
import 'package:flutterappsiprorev0/layouts/tab_layout.dart';
import 'package:flutterappsiprorev0/screens/home_screen.dart';

class InfoScreen extends StatefulWidget {
  static final String id = 'info_screen';

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sipro, Side Project Builder',
            style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        body: Container(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: FlatButton(
          child: Text('Go to Home'),
          onPressed: () {
            Navigator.pushNamed(context, TabLayout.id);
          },
        ),
      ),
    ));
  }
}
