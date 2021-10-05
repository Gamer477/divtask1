import 'package:divtask1/signUpScreen.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class BottomnavBar extends StatelessWidget {
  BottomnavBar({required this.navPageCall0,required this.navPageCall1,required this.icon0,required this.icon1,
    required this.text0,required this.text1});
  Widget Function() navPageCall0;
  Widget Function() navPageCall1;
  final IconData icon0;
  final IconData icon1;
  final String text0;
  final String text1;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      new BottomNavigationBarItem(icon: Icon(icon0),title: Text(text0),),
      new BottomNavigationBarItem(icon: Icon(icon1),title: Text(text1),),
    ],type: BottomNavigationBarType.fixed,onTap: (val){
      if(val==0)
      { Navigator.push(context, MaterialPageRoute(builder: (context)=>navPageCall0()));
      }
      else{
        Navigator.push(context, MaterialPageRoute(builder: (context)=>navPageCall1()));
        //Navigator.pop(context);
      }
    },);
  }
}
