import 'package:flutter/material.dart';
import 'commonWidgets.dart';
import 'inpursettings.dart';

class Login extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var regexpEmail = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  var regexpPassword = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SharedWidget(
          fullTextFieldWidget: fullTextFieldWidget(),
          imagename: 'images/gx.jpg',
          buttonAction: buttonAction,
          frontText: 'Hello',
          buttonText: 'Login',
        ),
      ),
    );
  }

  void buttonAction() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }

  validationEmail(String? val) {
    (val){
      if (val.isEmpty || !regexpEmail.hasMatch(val)) {
        return 'Enter a valid Email!';
      }
      return null;
    };

  }

  Widget fullTextFieldWidget() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          InputWidgets(
            validation: validationEmail,
            labelText: 'E-Mail',
            iconType: Icons.email,
            obsecuringText: false,
            regexptype: regexpEmail,
            keyboadtype: TextInputType.text,
          ),
          InputWidgets(
            validation: validationEmail,
            labelText: 'Password',
            iconType: Icons.password,
            obsecuringText: true,
            regexptype: regexpPassword,
            keyboadtype: TextInputType.text,
          ),
        ],
      ),
    );
  }
}
