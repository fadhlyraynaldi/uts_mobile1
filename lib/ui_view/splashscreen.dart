import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_uts_mobile/main.dart';

class SplashScreen extends StatefulWidget{

  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen>{

void initState(){
  super.initState();
  splashscreenStart();
}
splashscreenStart() async{
  var duration = const Duration(seconds: 3);
  return Timer(duration, () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
   });
}

@override
Widget build(BuildContext context){

return Scaffold(
  backgroundColor: Colors.deepPurple,
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.school,
          size: 100.0,
          color: Colors.white,
        ),
        SizedBox(height: 24.0,),
        Text("MY CAMPUS",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
        ))
      ],
    ),
  ),
);

}


}