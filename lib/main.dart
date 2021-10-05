import 'package:divtask1/commonWidgets.dart';
import 'package:divtask1/navwidgetspage.dart';
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
      drawer: SafeArea(
        child: Drawer(
          child: Center(
            child: Container(
              child:StartUpPage(colorl: Colors.amber,) ,
            ),
          ),
        ),
      ),
      appBar: AppBar(title: Text('Div Systems'),actions: [
        InkWell(child: SizedBox(width: 0.0,),
        onTap:(){
          Scaffold.of(context).openDrawer();
        },
        )
      ],),
      body: StartUpPage(colorl: Colors.white,),//SharedWidget(buttonText: 'Login',),
    );
  }
}
