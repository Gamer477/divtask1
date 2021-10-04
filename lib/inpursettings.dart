import 'package:flutter/material.dart';

class InputWidgets extends StatelessWidget {

  InputWidgets({required this.labelText,required this.iconType,required this.validation,
    required this.regexptype,required this.obsecuringText,required this.keyboadtype});
  final String labelText;
  final IconData iconType;
  final Function(String?) validation;
  final bool obsecuringText;
  final RegExp regexptype;
  final TextInputType keyboadtype;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      child: TextFormField(
        keyboardType: keyboadtype,
        obscureText: obsecuringText,
        decoration: InputDecoration(
          labelText: labelText,
          icon: Icon(iconType),
        ),
        validator:(value){
          validation(value);
        },
        //     (value) {
        //   if (value!.isEmpty ||
        //       !regexptype
        //           .hasMatch(value)) {
        //     return 'Enter a valid $labelText!';
        //   }
        //   return null;
        // },
      ),
    );
  }
}
