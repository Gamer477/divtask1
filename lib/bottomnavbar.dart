import 'package:divtask1/signUpScreen.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class BottomnavBar extends StatefulWidget {
  BottomnavBar({required this.navPageCall0,required this.navPageCall1,required this.icon0,required this.icon1,
    required this.text0,required this.text1});
  Widget Function() navPageCall0;
  Widget Function() navPageCall1;
  final IconData icon0;
  final IconData icon1;
  final String text0;
  final String text1;

  @override
  State<BottomnavBar> createState() => _BottomnavBarState();
}

class _BottomnavBarState extends State<BottomnavBar> {
   int indexpr=0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
     currentIndex: indexpr,
selectedItemColor: Colors.blue,
      backgroundColor: Colors.deepOrange,
      items: [
      new BottomNavigationBarItem(icon: Icon(widget.icon0),title: Text(widget.text0),),
      new BottomNavigationBarItem(icon: Icon(widget.icon1),title: Text(widget.text1),),
    ],type: BottomNavigationBarType.fixed,onTap: (val){
      if(val==0)
      {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>widget.navPageCall0()));
      setState(() {
        indexpr=0;
      });
      }
      else{
        Navigator.push(context, MaterialPageRoute(builder: (context)=>widget.navPageCall1()));
        setState(() {
          indexpr=1;
        });
        //Navigator.pop(context);
      }
    },);
  }
}
