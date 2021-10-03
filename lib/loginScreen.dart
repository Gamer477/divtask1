import 'package:flutter/material.dart';
import 'commonWidgets.dart';


class Login extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: SharedWidget(buttonAction: buttonAction,frontText:'Hello',icondata1:Icons.email,icondata2: Icons.password,
          buttonText: 'Login',thirdField: SizedBox(height: 0,)
          ,firstLabelText: 'E-Mail',secondLabelText: 'Password',),
      ),

    );
  }

  void buttonAction(){
    if(_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }

}
