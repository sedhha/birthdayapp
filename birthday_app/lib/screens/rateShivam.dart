import 'package:birthday_app/customizations/BirthdayCardCustomization.dart';
import 'package:birthday_app/customizations/navigator_screen.dart';
import 'package:birthday_app/customizations/startupscreen.dart';
import 'package:flutter/material.dart';

class RateShivam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return rateShivam();
  }
}

class rateShivam extends StatefulWidget {
  @override
  _rateShivamState createState() => _rateShivamState();
}

class _rateShivamState extends State<rateShivam> {
  int Rating;
  void updateColorSchema(int x)
  {
    Rating = x+1;
    for(int i=0;i<=x;i++)
      {
        ColorSchema[i]=active;
      }
    for(int i=x+1;i<5;i++)
      {
        ColorSchema[i]=inactive;
      }
  }
  double balloonHeight=60.0;
  double photoDim=150.0;
  List<Color> ColorSchema = [Colors.white60,
    Colors.white60,Colors.white60,
    Colors.white60,Colors.white60];
  Color inactive = Colors.white60;
  Color active = Colors.amberAccent;
  List<bool> ColorBoolean = [false,false,false,false,false];
  String Name;
  String Msg;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BasicBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset(
                  'assets/logos/startupscreentoplogo.png',
                  width: balloonHeight,
                  height: balloonHeight),
              Container(
                width: photoDim,
                height: photoDim,
                child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                      'assets/images/WelcomePersonImage.jpg',
                    )
                ),
              ),
              Image.asset(
                  'assets/logos/startupscreentoplogo.png',
                  width: balloonHeight,
                  height: balloonHeight),

            ],),
          SizedBox(height:5),
          Container(
            height: 5.0,
            width: 350,
            color: BirthdayLineHeaderColor,
          ),
          Container(
            width: 350,
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                hoverColor: Color(0xff055E98),

              ),
              onChanged: (value){
                Name=value;
              },
            ),
          ),
          Container(
            width:350,
            height: 250,
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                labelText: 'Message',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                hoverColor: Color(0xff055E98),

              ),
              onChanged: (value){
                Msg=value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(75, 0, 75, 0),
            child: Row(children: <Widget>[
              IconButton(icon: Icon(Icons.star,color: ColorSchema[0],),
              onPressed: (){
                setState(() {
                  updateColorSchema(0);
                });
              },),
              IconButton(icon: Icon(Icons.star,color: ColorSchema[1],
              ),onPressed: (){
                setState(() {
                  updateColorSchema(1);
                });
              },
              ),
              IconButton(icon: Icon(Icons.star,color: ColorSchema[2],),
              onPressed: (){
                setState(() {
                  updateColorSchema(2);
                });
              },),
              IconButton(icon: Icon(Icons.star,color: ColorSchema[3],),
              onPressed: (){
                setState(() {
                  updateColorSchema(3);
                });
              },),
              IconButton(icon: Icon(Icons.star,color: ColorSchema[4],),
              onPressed: (){
                setState(() {
                  updateColorSchema(4);
                });
              },),
            ],),
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(NavigatorRadius),
                side: BorderSide(color: NavigatorBorderColour)),
            onPressed: (){
              var JSONResponseObject ={
                "message":Msg,
                "name":Name,
                "rating":Rating
              };
            },
            color: NavigatorBarColour,
            textColor: NavigatorTextColour,
            child: Text("Submit",
                style: TextStyle(fontSize: 20)),
          ),
          ],
      ),
    );
  }
}

