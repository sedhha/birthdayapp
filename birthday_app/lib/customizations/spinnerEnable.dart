import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'startupscreen.dart';
Widget scaffy=Scaffold(
  body: Container(
    color: BasicBackground,
    child: Center(
      child:SpinKitDoubleBounce(
        color: Colors.white,
        size: 150.0,
      ),
    ),
  ),
);