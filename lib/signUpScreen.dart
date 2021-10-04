import 'package:flutter/material.dart';
import 'commonWidgets.dart';
import 'inpursettings.dart';

class SignUp extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
final RegExp regexpusername=RegExp(r'[Aa-zZ]');
final RegExp regexpPhone=RegExp(r'[0-9]');
final RegExp regexpCountry=RegExp(r'[Aa-zZ]');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SharedWidget(fullTextFieldWidget:fullTextFieldWidget(),imagename: 'images/witcher.jpg',
          buttonAction:buttonAction,frontText:'Welcome',buttonText: 'Sign Up',),
      ),
    );
  }
void  validationcountry(String? val){
        (val) {
      if (val!.isEmpty ||
          !regexpCountry
              .hasMatch(val)) {
        return 'Enter a valid Country Name!';
      }
      return null;
    };
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
          InputWidgets(validation:validationcountry,labelText: 'User Name',iconType: Icons.email_outlined,obsecuringText: false,
        regexptype: regexpusername,keyboadtype: TextInputType.text,) ,

      InputWidgets(validation:validationcountry,labelText: 'Phone',iconType: Icons.phone,obsecuringText: false,
        regexptype: regexpPhone,keyboadtype: TextInputType.phone,) ,

          InputWidgets(validation:validationcountry,labelText: 'Country',iconType: Icons.add_location,obsecuringText: false,
            regexptype: regexpCountry,keyboadtype: TextInputType.text,) ,

        ],
      ),
    );
  }

}
