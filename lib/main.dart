
import 'package:casestudy/splashscreen.dart';
import 'package:flutter/material.dart';


import 'Login.dart';
void main(){
  
    runApp(
      MaterialApp(
            debugShowCheckedModeBanner: false,
            home:SplashScreen(
                      )));
  
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Login();
  }
}
