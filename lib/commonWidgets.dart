import 'package:flutter/material.dart';

class SharedWidget extends StatelessWidget {
  SharedWidget({required this.buttonAction, required this.frontText,required this.icondata1,required this.icondata2,required this.buttonText,
    required this.thirdField,required this.firstLabelText,required this.secondLabelText});
final String frontText;
  final String firstLabelText;
  final String secondLabelText;
  final String buttonText;
  final Widget thirdField;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
final IconData icondata1;
  final IconData icondata2;
  final VoidCallback buttonAction;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'images/gx.jpg',
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              frontText,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 60.0,
            ),
            Container(
              width: 300.0,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: firstLabelText,
                  icon: Icon(icondata1),
                ),
                validator: (value) {
      if (value!.isEmpty ||
      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(value)) {
      return 'Enter a valid $firstLabelText!';
      }
      return 'Well Done';
      },
              ),
            ),
            Container(
              width: 300.0,
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(icondata2),
                  labelText: (secondLabelText),
                ),
                 validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                        .hasMatch(value)) {
                  return 'Enter a valid $secondLabelText!';
                }
                return 'Well Done';
              },
              ),
            ),

            thirdField,
            SizedBox(
              height: 60.0,
            ),
            Container(
              width: double.infinity,
              child: FloatingActionButton(
                onPressed: () {
                  buttonAction();
                },
                child: Text(buttonText),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
