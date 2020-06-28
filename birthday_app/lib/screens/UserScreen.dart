import 'package:birthday_app/screens/navigationscreen.dart';
import 'package:flutter/material.dart';
import 'package:birthday_app/customizations/user_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return userScreen();
  }
}
class userScreen extends StatefulWidget {
  @override
  _userScreenState createState() => _userScreenState();
}

class _userScreenState extends State<userScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BasicBackground,
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset(
                  'assets/logos/startupscreentoplogo.png',
                  width: 100,
                  height: 100),
              Image.asset(
                  'assets/logos/startupscreentoplogo.png',
                  width: 100,
                  height: 100),
            ],),
          SizedBox(height: 5,),
          Container(
              width: 350,
              height: 350,
            child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(
                    'assets/images/WelcomePersonImage.jpg',
                )
            ),
          ),

          SizedBox(height: 5,),
          Text(UserMessage,style: TextStyle(fontFamily: "Pangolin",
              fontSize:40,
              color: Colors.white),),
          SizedBox(height:5,),
          SizedBox(
            width: 320.0,
            height: 120.0,
            child: ScaleAnimatedTextKit(
                onTap: () {
                },
                text: UserScreenMessage,
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontFamily: "Belleza"
                ),
                textAlign: TextAlign.start,
                alignment: AlignmentDirectional.topStart // or Alignment.topLeft
            ),
          ),
          SizedBox(height:20,),
          RawMaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NavigatorScreen()),
              );
            },
            elevation: 2.0,
            fillColor: Colors.white,
            child: Icon(
              Icons.arrow_right,
              size: 50.0,
            ),
            padding: EdgeInsets.all(10.0),
            shape: CircleBorder(),
          )

        ],
      ),
    );
  }
}

