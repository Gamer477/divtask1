import 'package:flutter/material.dart';
import 'commonWidgets.dart';

class SignUp extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SharedWidget(fullTextFieldWidget:fullTextFieldWidget(),imagename: 'images/witcher.jpg',
        buttonAction:buttonAction,frontText:'Welcome',buttonText: 'Sign Up',),
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
                labelText: 'User Name',
                icon: Icon(Icons.email_outlined),
              ),
              validator: (value) {
                if (value!.length< 11|| value.isEmpty ||
                    !RegExp(r'[Aa-zZ]')
                        .hasMatch(value)) {
                  return 'Enter a valid Name!';
                }
                return 'Well Done';
              },
            ),
          ),
          Container(
            width: 300.0,
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.phone),
                labelText: ('Phone'),
              ),
              validator: (value) {
                if ( value!.length< 11 || value.isEmpty ||
                    !RegExp(r'[0-9]')
                        .hasMatch(value)) {
                  return 'Phone at Leats Must be 11 Numbers long!';
                }
                return 'Well Done';
              },
            ),
          ),
          Container(
            width: 300.0,
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                icon: Icon(Icons.add_location),
                labelText: ('Country'),
              ),
              validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(r'[Aa-zZ]')
                        .hasMatch(value)) {
                  return 'Enter a valid Country Name!';
                }
                return 'Well Done';
              }
              ,
            ),
          )
        ],
      ),
    );
  }

}
