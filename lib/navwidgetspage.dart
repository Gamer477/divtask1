import 'package:divtask1/loginScreen.dart';
import 'package:divtask1/signUpScreen.dart';
import 'package:flutter/material.dart';

import 'commonButton.dart';

class StartUpPage extends StatelessWidget {
  StartUpPage({required this.colorl});
  @override
  final Color colorl;
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new BottomNavigationBar(items: [
        new BottomNavigationBarItem(icon: Icon(Icons.login),title: Text('LogIn'),),
        new BottomNavigationBarItem(icon: Icon(Icons.create_sharp),title: Text('Sign Up'),),
      ],type: BottomNavigationBarType.fixed,onTap: (val){
        if(val==0)
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
        else{
          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
        }
      },),
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
