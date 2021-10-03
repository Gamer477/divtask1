import 'package:flutter/material.dart';
import 'commonWidgets.dart';

class SignUp extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: SharedWidget(buttonAction:buttonAction,frontText:'Welcome',icondata1:Icons.email_outlined,icondata2: Icons.phone,buttonText: 'Sign Up',
          thirdField: thirdField(),firstLabelText: 'User Name',secondLabelText: 'Phone',),
      ),
    );
  }
  Widget thirdField(){
    return Form(
      key: _formKey,
      child: Container(
            width: 300.0,
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                icon: Icon(Icons.add_location),
                labelText: ('Country'),
              ),
              validator: (value) {
    if (value!.isEmpty ||
    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value)) {
    return 'Enter a valid Country Name!';
    }
    return 'Well Done';
    }
              ,
            ),
          ),
    );
  }
void buttonAction(){
  if(_formKey.currentState!.validate()) {
    _formKey.currentState!.save();
  }
}
}
