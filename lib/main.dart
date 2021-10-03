import 'package:divtask1/commonWidgets.dart';
import 'package:divtask1/signUpScreen.dart';
import 'package:flutter/material.dart';

import 'loginScreen.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Div Systems'),),
      body: SignUp(),//SharedWidget(buttonText: 'Login',),
    );
  }
}
