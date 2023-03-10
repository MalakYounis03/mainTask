import 'package:flutter/material.dart';
import 'SplashScreen.dart';
import 'MainWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder(
        future: Future.delayed(
            Duration(seconds: 3)), // replace with your desired delay time
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SplashScreen();
          } else {
            return MainWidget();
          }
        },
      ),
    );
  }
}
