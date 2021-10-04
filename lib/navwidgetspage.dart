import 'package:divtask1/loginScreen.dart';
import 'package:divtask1/signUpScreen.dart';
import 'package:flutter/material.dart';

class StartUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(

        children: [
          RawMaterialButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
          },child: Text('Login Page'),fillColor: Colors.red,),
          RawMaterialButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  SignUp()),
            );
          },child: Text('SignUp Page'),fillColor: Colors.blue),
        ],
      )),
    );
  }
}
