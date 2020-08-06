import 'package:flutter/material.dart';
import 'package:flutterappsiprorev0/layouts/tab_layout.dart';
import 'package:image_picker/image_picker.dart'; // 이미지 픽커 추가. 폰의 갤러리 저장 이미지 라이브러리 사용
import 'package:flutterappsiprorev0/screens/db_screen.dart';
import 'dart:io';

class WriteScreen extends StatefulWidget {
  static final String id = 'write_screen';

  @override
  _WriteScreenState createState() => _WriteScreenState();


}



class _WriteScreenState extends State<WriteScreen> {
  final textEditingController1 = TextEditingController();
  final textEditingController2 = TextEditingController();
  final textEditingController3 = TextEditingController();
  final textEditingController4 = TextEditingController();
  final textEditingController5 = TextEditingController();

  File _image;

  @override
  void dispose() {
    textEditingController1.dispose();
    textEditingController2.dispose(); // dispose는 화면 전환 시 메모리 해제
    textEditingController3.dispose();
    textEditingController4.dispose();
    textEditingController5.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Team Building',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          //스크롤뷰가 생기도록 해줌.
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: CircleAvatar(
                  backgroundColor: Colors.cyan,
                  child: IconButton(
                      icon: Icon(Icons.add_a_photo),
                      color: Colors.white,
                      onPressed: (){},
                       ), // 갤러리 이미지 불러오기
                  radius: 50,
                ),
              ),
              Text('fill the blank to build my team'),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(hintText: '   Input Project Name'),
                controller: textEditingController1,
              ),
              TextField(
                decoration:
                    InputDecoration(hintText: '   Input Project Description'),
                controller: textEditingController2,
              ),
              TextField(
                decoration: InputDecoration(hintText: '   Input Start Date'),
                controller: textEditingController3,
              ),
              TextField(
                decoration: InputDecoration(hintText: '   Input Finish Date'),
                controller: textEditingController4,
              ),
              TextField(
                decoration:
                    InputDecoration(hintText: '   Input Meeting Location'),
                controller: textEditingController5,
              ),
              SizedBox(
                height: 30,
              ),
              RaisedButton(
                child: Text(
                  'Save',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.cyan,
                onPressed: () {
                  Navigator.pushNamed(context, TabLayout.id);
                },
              )
            ],
          ),
        ),
      )),
    );
  }





}

