import 'package:birthday_app/screens/BirthdayCard.dart';
import 'package:flutter/material.dart';
import 'package:birthday_app/customizations/user_screen.dart';
import 'package:birthday_app/customizations/navigator_screen.dart';
class NavigatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return navigatorScreen();
  }
}

class navigatorScreen extends StatefulWidget {
  @override
  _navigatorScreenState createState() => _navigatorScreenState();
}

class _navigatorScreenState extends State<navigatorScreen> {
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
    SizedBox(height:30)];
  initState() {
    super.initState();
    NavigatorS.add(Container(
          width: 300,
          height: 40,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(NavigatorRadius),
                side: BorderSide(color: NavigatorBorderColour)),
                onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BirthdayCard()),
                );},
                color: NavigatorBarColour,
                textColor: NavigatorTextColour,
            child: Text(ButtonTexts[0],
                style: TextStyle(fontSize: 20)),
          ),
        ));
    NavigatorS.add(Container(
      width: 300,
      height: 40,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(NavigatorRadius),
            side: BorderSide(color: NavigatorBorderColour)),
        onPressed: (){

        },
        color: NavigatorBarColour,
        textColor: NavigatorTextColour,
        child: Text(ButtonTexts[1],
            style: TextStyle(fontSize: 20)),
      ),
    ));
    NavigatorS.add(Container(
      width: 300,
      height: 40,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(NavigatorRadius),
            side: BorderSide(color: NavigatorBorderColour)),
        onPressed: (){},
        color: NavigatorBarColour,
        textColor: NavigatorTextColour,
        child: Text(ButtonTexts[2],
            style: TextStyle(fontSize: 20)),
      ),
    ));
    NavigatorS.add(Container(
      width: 300,
      height: 40,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(NavigatorRadius),
            side: BorderSide(color: NavigatorBorderColour)),
        onPressed: (){},
        color: NavigatorBarColour,
        textColor: NavigatorTextColour,
        child: Text(ButtonTexts[3],
            style: TextStyle(fontSize: 20)),
      ),
    ));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BasicBackground,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: NavigatorS,
      ),
    );
  }
}



