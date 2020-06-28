import 'package:birthday_app/customizations/startupscreen.dart';
import 'package:flutter/material.dart';
import 'package:birthday_app/customizations/navigator_screen.dart';
import 'package:birthday_app/customizations/BirthdayCardCustomization.dart';
class BirthdayGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return birthdayGallery();
  }
}
class birthdayGallery extends StatefulWidget {
  @override
  _birthdayGalleryState createState() => _birthdayGalleryState();
}
class _birthdayGalleryState extends State<birthdayGallery> {
  List<Widget> NavigatorS= [SizedBox(height: 20,),
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
  child: Text(ButtonTexts[1],
  style: TextStyle(fontSize: 20)),
  ),
  ),Container(
      height: 5.0,
      width: 350,
      color: BirthdayLineHeaderColor,
    ),Expanded(
      flex: 1,
      child: PageView(scrollDirection: Axis.horizontal,
        children: Image_Widgets,),
    )];
  initState() {
    super.initState();
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

