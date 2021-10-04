import 'package:flutter/material.dart';
import 'commonWidgets.dart';


class Login extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SharedWidget(fullTextFieldWidget: fullTextFieldWidget(),
        imagename: 'images/gx.jpg',buttonAction: buttonAction,frontText:'Hello',
        buttonText: 'Login',),
    );
  }

  void buttonAction(){
    if(_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }

  Widget fullTextFieldWidget(){
    return  Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
            width: 300.0,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                icon: Icon(Icons.email),
              ),
              validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value)) {
                  return 'Enter a valid E-Mail!';
                }
                return 'Well Done';
              },
            ),
          ),
          Container(
            width: 300.0,
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.password),
                labelText: ('Password'),
              ),
              validator: (value) {
                if (value!.length< 8 || value.isEmpty ||
                    !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])')
                        .hasMatch(value)) {
                  return 'Password Must be 8 Charcters and not Empty!';
                }
                return 'Well Done';
              },
            ),
          )
        ],
      ),
    );
  }


}
