import 'package:birthday_app/customizations/BirthdayCardCustomization.dart';
import 'package:birthday_app/customizations/shivamquiz.dart';
import 'package:birthday_app/customizations/startupscreen.dart';
import 'package:flutter/material.dart';
import 'package:birthday_app/customizations/navigator_screen.dart';
class ShivamAnswer extends StatelessWidget {
  final int Score;
  final List<String> Answerss;
  ShivamAnswer({Key key, @required this.Score,@required this.Answerss}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return shivamAnswer(Score: Score,Answerss: Answerss,);
  }
}

class shivamAnswer extends StatefulWidget {
  final int Score;
  final List<String> Answerss;
  shivamAnswer({Key key, @required this.Score,@required this.Answerss}) : super(key: key);
  @override
  _shivamAnswerState createState() => _shivamAnswerState(Score: Score,Answerss: Answerss);
}

class _shivamAnswerState extends State<shivamAnswer> {
  final int Score;
  final List<String> Answerss;
  _shivamAnswerState({Key key, @required this.Score,@required this.Answerss});
  @override
  initState() {
    super.initState();
    print(Answerss);
  }
  @override
  Widget build(BuildContext context) {
    String FinalText = "You know Shivam ${(Score*100/10)}%";
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
                  width: 60,
                  height: 60),
              Container(
                width: 250,
                height: 250,
                child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                      'assets/images/WelcomePersonImage.jpg',
                    )
                ),
              ),
              Image.asset(
                  'assets/logos/startupscreentoplogo.png',
                  width: 60,
                  height: 60),

            ],),
          SizedBox(height:5),
          Container(
            height: 5.0,
            width: 350,
            color: BirthdayLineHeaderColor,
          ),
          Padding(
            padding: new EdgeInsets.fromLTRB(45,10,45,0),
            child: Text(FinalText,
              style: TextStyle(
                fontFamily: "Pangolin",
                fontSize: 48,
                color:QuestionTextColor,
              ),),
          ),

        ],
      ),
    );
  }
}

