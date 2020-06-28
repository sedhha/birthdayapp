import 'package:birthday_app/customizations/shivamquiz.dart';
import 'package:birthday_app/customizations/startupscreen.dart';
import 'package:birthday_app/screens/ShivamAnswer.dart';
import 'package:flutter/material.dart';
import 'package:birthday_app/customizations/BirthdayCardCustomization.dart';
import 'package:birthday_app/customizations/navigator_screen.dart';
class KnowShivam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return knowShivam();
  }
}
class knowShivam extends StatefulWidget {
  @override
  _knowShivamState createState() => _knowShivamState();
}
//List<Widget> tickList = [Icon(Icons.check,color: Colors.green,),
//  Icon(Icons.check,color: Colors.green,),Icon(Icons.check,color: Colors.green,),
//  Icon(Icons.clear,color: Colors.red,)];
List<Widget> tickList =[];
int Count = 0;
class _knowShivamState extends State<knowShivam> {
  int Score =0;
  List<String> Answerss=[];
  void checkSolutionandAssign(int Count,bool Index)
  {
    if(Answers[Count]==Index)
      {
        setState(() {
          tickList.add(Icon(Icons.check,color: Colors.green,));
          Score=Score+1;
        });
      }
    else
      {
        setState(() {
          tickList.add(Icon(Icons.clear,color: Colors.red,));
        });
      }
  }
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
                  width: 80,
                  height: 80),
              Container(
                width: 100,
                height: 100,
                child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                      'assets/images/WelcomePersonImage.jpg',
                    )
                ),
              ),
              Image.asset(
                  'assets/logos/startupscreentoplogo.png',
                  width: 80,
                  height: 80),

            ],),
          SizedBox(height:5),
          Container(
            width: 250,
            height: 40,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(BirthdayRadius),
                  side: BorderSide(color: BirthdayBorderColour)),
              onPressed: () {},
              color: BirthdayBarColour,
              textColor: BirthdayTextColour,
              child: Text(ButtonTexts[2],
                  style: TextStyle(fontSize: 20)),
            ),
          ),
          Container(
            height: 5.0,
            width: 350,
            color: BirthdayLineHeaderColor,
          ),
          Padding(
            padding: new EdgeInsets.fromLTRB(45,10,45,0),
            child: Text(Questions[Count],
              style: TextStyle(
                fontFamily: "Pangolin",
                fontSize: 48,
                color:QuestionTextColor,
              ),),
          ),
          Container(
            width: 300,
            height: 60,
            child: RaisedButton(
//        shape: RoundedRectangleBorder(
//            borderRadius: BorderRadius.circular(BirthdayRadius),
//            side: BorderSide(color: BirthdayBorderColour)),
              onPressed: () {
                setState(() {
                  checkSolutionandAssign(Count,false);
                  Answerss.add(AOptions[Count]);
                  Count=Count+1;
                  if(Count>=Questions.length)
                  {
                    print("Preventing 1");
                    Count=Count-1;
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) =>ShivamAnswer(
                          Score: Score,Answerss: Answerss,)));
                  }
                });

              },
              color: Colors.red,
              textColor: Colors.white,
              child: Text(AOptions[Count],
                  style: TextStyle(fontSize: 24)),
            ),
          ),
          Container(
            width: 300,
            height: 60,
            child: RaisedButton(
//        shape: RoundedRectangleBorder(
//            borderRadius: BorderRadius.circular(BirthdayRadius),
//            side: BorderSide(color: BirthdayBorderColour)),
              onPressed: () {
                setState(() {
                  checkSolutionandAssign(Count,true);
                  Answerss.add(AOptions[Count]);
                  Count=Count+1;
                  if(Count>=Questions.length)
                    {
                      Count--;
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context) =>ShivamAnswer(
                            Score: Score,Answerss: Answerss,)));
                    }
                });
              },
              color: Colors.green,
              textColor: Colors.white,
              child: Text(BOptions[Count],
                  style: TextStyle(fontSize: 24)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 35),
            child: Row(children: tickList,),
          )
        ],
      ),
    );
  }
}

