import 'package:flutter/material.dart';
import 'package:flutterappsiprorev0/screens/write_screen.dart';

class HomeScreen extends StatefulWidget {
  static final String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/logo1.PNG'),
                  radius: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  'Welcome to Sipro!!!',
                  style: TextStyle(fontSize: 30, color: Colors.cyan),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  'Side Project',
                  style: TextStyle(fontSize: 30, color: Colors.cyan),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  'Team Builder',
                  style: TextStyle(fontSize: 30, color: Colors.cyan),
                ),
              ),

              SizedBox(
                height: 40,
              ),
              RaisedButton(
                child: Text(
                  'Team Building Start',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.cyan,
                onPressed: () {
                  Navigator.pushNamed(context, WriteScreen.id);
                },
              )
            ],
          ),
        )));
  }
}
