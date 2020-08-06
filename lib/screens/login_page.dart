//로그인 페이지

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';


class LoginPage extends StatelessWidget {

  static final String id = 'login_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Sipro',
            style: TextStyle(fontSize: 60.0, color: Colors.cyan, fontWeight: FontWeight.bold,),

            ),

            Padding(
              padding: EdgeInsets.all(50.0),
            ),

            SignInButton(         // pubspec.yaml에서 라이브러리 추가 후 사용 가능.

              Buttons.Google,
              onPressed: (){},
            )


          ],
        ),
      ),

    );
  }
}
