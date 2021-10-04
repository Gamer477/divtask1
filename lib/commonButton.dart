import 'package:flutter/material.dart';

class Button extends StatelessWidget {
   Button({required this.onpressfun,required this.buttonText,required this.borderColor,required this.highlightColor});
final VoidCallback onpressfun;
final String buttonText;
final Color highlightColor;
final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RawMaterialButton(
        onPressed:
          onpressfun
        ,
        child: Text(buttonText),
        highlightColor: highlightColor,
        shape: (
    RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(18.0),
    side: BorderSide(color: borderColor)
    )),
      ),
    );
  }
}
