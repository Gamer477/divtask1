import 'package:divtask1/navwidgetspage.dart';
import 'package:flutter/material.dart';

import 'bottomnavbar.dart';
import 'loginScreen.dart';
import 'signUpScreen.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomnavBar(navPageCall0: ()=>Login(),navPageCall1: ()=>SignUp(),
        icon0: Icons.login,
        icon1: Icons.person_add_alt,text0: 'LogIn',text1: 'Sign Up',),
      drawer:
      SafeArea(
        child: Container(
          height: 763.0,
          child: Drawer(
            child: Center(
              child:StartUpPage(colorl: Colors.amber,),
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
      ],
        backgroundColor: Colors.deepOrange,
      ),
      body: StartUpPage(colorl: Colors.white,),//SharedWidget(buttonText: 'Login',),
    );
  }
}
