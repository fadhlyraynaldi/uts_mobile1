import 'package:flutter/material.dart';
import 'package:project_uts_mobile/ui_view/login.dart';
import 'package:project_uts_mobile/ui_view/signup.dart';
import 'package:project_uts_mobile/ui_view/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'SELAMAT DATANG DI APLIKASI SOSIAL MEDIA KAMPUS STTB',
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
     home: SplashScreen(),
   );
 }
}
class HomePage extends StatelessWidget {
 Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.deepPurple,
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Icon(Icons.school_rounded, color: Colors.white, size: 45,),
           Text("MY CAMPUS",
               style: TextStyle(color: Colors.white, fontSize: 22)),
             
           SizedBox(height: 200,),
           Text("Selamat Datang Pengguna",
               style: TextStyle(color: Colors.white, fontSize: 22)),
           SizedBox(height: 6,),
           Text("Silahkan Login terlebih dahulu !",
             style: TextStyle(color: Colors.white, fontSize: 10),),
           SizedBox(height: 6,),
           MaterialButton(
             minWidth: 210,
             color: Colors.green,
             textColor: Colors.white,
             child: Text("Sign Up",
               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
             },
           ),
           TextButton(
             child: Text("Log In", style: TextStyle(color: Colors.white,
                 fontWeight: FontWeight.bold,
                 fontSize: 18),),
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
             },
           )
         ],
       ),
     ),
   );
 }
}