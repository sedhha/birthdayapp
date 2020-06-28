import 'package:birthday_app/customizations/startupscreen.dart';
import 'package:flutter/material.dart';
import 'package:birthday_app/customizations/BirthdayCardCustomization.dart';
import 'package:birthday_app/customizations/navigator_screen.dart';
class BirthdayCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return birthdayCard();
  }
}

class birthdayCard extends StatefulWidget {
  @override
  _birthdayCardState createState() => _birthdayCardState();
}

class _birthdayCardState extends State<birthdayCard> {
  List<Widget> NavigatorS= [SizedBox(height: 30,),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Image.asset(
            'assets/logos/startupscreentoplogo.png',
            width: 100,
            height: 100),
        Container(
          width: 150,
          height: 150,
          child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(
                'assets/images/WelcomePersonImage.jpg',
              )
          ),
        ),
        Image.asset(
            'assets/logos/startupscreentoplogo.png',
            width: 100,
            height: 100),

      ],),
    SizedBox(height:30),
    Container(
      width: 200,
      height: 40,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BirthdayRadius),
            side: BorderSide(color: BirthdayBorderColour)),
        onPressed: () {},
        color: BirthdayBarColour,
        textColor: BirthdayTextColour,
        child: Text(ButtonTexts[0],
            style: TextStyle(fontSize: 20)),
      ),
    ),
    SizedBox(height:20),
    Container(
      height: 5.0,
      width: 350,
      color: BirthdayLineHeaderColor,
    )];
  initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BasicBackground,
      body: Column(
      children: NavigatorS,
    ),);
  }
}

