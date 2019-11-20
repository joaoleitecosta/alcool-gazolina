import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
       children: <Widget>[
         SizedBox( height: 50, ),
         Image.asset(
           "assets/images/aog-white.png",
           height: 80,
         ),
         SizedBox(height: 10),
         Text(
           "Alcool ou Gazolina",
           style: TextStyle(
             color: Colors.white,
             fontSize: 25,
             fontFamily: "Big Shoulder Display",
           ),
         ),
         SizedBox(height: 20,)
       ]      
    );
  }
}