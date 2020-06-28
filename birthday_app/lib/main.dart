import 'package:birthday_app/screens/BirthdayCard.dart';
import 'package:birthday_app/screens/UserScreen.dart';
import 'package:birthday_app/screens/loginScreen.dart';
import 'package:birthday_app/screens/navigationscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BirthdayCard(),
    );
  }
}

