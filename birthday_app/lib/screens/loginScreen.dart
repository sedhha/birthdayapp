import 'package:birthday_app/screens/UserScreen.dart';
import 'package:flutter/material.dart';
import 'package:birthday_app/customizations/startupscreen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:birthday_app/backendprograms/googleSignIn.dart';
import 'package:birthday_app/customizations/spinnerEnable.dart';
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return loginScreen();
  }
}
class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}


class _loginScreenState extends State<loginScreen> {
  initState() {
    super.initState();
  }
  @override
  void _showDialog(DisplayErr) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: Text("Wrong Credentials",
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          content: Text(
            DisplayErr,
            style: TextStyle(fontSize: 16,fontStyle: FontStyle.italic),),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
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
          SizedBox(height: 60,),
          SizedBox(
        width: 320.0,
        height: 250,
        child: TyperAnimatedTextKit(
            onTap: () {
//              print("Tap Event");
            },
            text: InitialText,
            textStyle: TextStyle(
              color: StartupTextColor,
                fontSize: 48.0,
                fontFamily: "Belleza"
            ),
            textAlign: TextAlign.center,
            alignment: AlignmentDirectional.topStart // or Alignment.topLeft
        ),
      ),
          SizedBox(height: 20,),
          Container(
          height: 60,
          width: 250,
          child:FlatButton(
            splashColor: StartupTextColor,
            onPressed: () async{
              var Returned = await signInWithGoogle();
              if(Returned=="200")
              {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserScreen()),
                );
              }
              else
              {
                _showDialog("Authentication Failed! Please retry");
              }
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                    'assets/logos/google_logo.png',
                    width: 35,
                    height: 35),
                SizedBox(width: 10),
                Text(GoogleSignInButtonText,
                  style: TextStyle(
                    fontSize: 20,
                    color: StartupTextColor,
                  ),),
              ],
            ),
            shape: RoundedRectangleBorder(side: BorderSide(
                color: GoogleSignInButtonBorder,
                width: 1,
                style: BorderStyle.solid
            ), borderRadius: BorderRadius.circular(50)),
          )),
          SizedBox(height:20),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
                'assets/images/StartupScreenBottomImage.jpg',
                width: 200,
                height: 150),
          ),

        ],
      ),
    );
  }
}


