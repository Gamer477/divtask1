import 'package:divtask1/loginScreen.dart';
import 'package:divtask1/signUpScreen.dart';
import 'package:flutter/material.dart';

import 'bottomnavbar.dart';
import 'commonButton.dart';

class StartUpPage extends StatelessWidget {
  StartUpPage({required this.colorl});
  @override
  final Color colorl;
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomnavBar(navPageCall0: ()=>Login(),navPageCall1: ()=>SignUp(),
        icon0: Icons.login,
        icon1: Icons.person_add_alt,text0: 'LogIn',text1: 'Sign Up',),
      backgroundColor: colorl,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Button(borderColor: Colors.amberAccent,highlightColor: Colors.amber,buttonText:'Login Page',onpressfun: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
          },),
          Button(borderColor: Colors.deepOrangeAccent,highlightColor: Colors.deepOrange,buttonText:'Sign Up Page',onpressfun: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  SignUp()),
            ); },),
        ],
      )),
    );
  }
}
