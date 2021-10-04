import 'package:divtask1/navwidgetspage.dart';
import 'package:flutter/material.dart';

class SharedWidget extends StatelessWidget {
  SharedWidget({required this.fullTextFieldWidget,required this.imagename,required this.buttonAction,
    required this.frontText,required this.buttonText,});
final String frontText;
  final String buttonText;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final VoidCallback buttonAction;
  final String imagename;
  final Widget fullTextFieldWidget;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                imagename,
              ),
              SizedBox(height: 20.0,),
              Text(
                frontText,
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              fullTextFieldWidget,
              SizedBox(height: 60.0,),
              Container(
                width: double.infinity,
                child: FloatingActionButton(
                  onPressed: () {
                    buttonAction();
                  },
                  child: Text(buttonText),
                ),
              ),
              SizedBox(height: 30.0,),
              Container(
                width: double.infinity,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go Back'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
