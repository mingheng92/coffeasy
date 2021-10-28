import 'package:flutter/material.dart';

extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

class Introduction extends StatelessWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color textColor = '#45B6FE'.toColor();
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Coffeasy",
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Image(image: AssetImage("assets/images/introduction.jpeg")),
              SizedBox(height: size.height * 0.05),
              Text(
                "Coffee Made Easy",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              RaisedButton(
                color: textColor,
                onPressed: () {
                  Navigator.pushNamed(context, '/wrapper');
                },
                child: Text(
                  "I am User",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
              RaisedButton(
                color: textColor,
                onPressed: () {},
                child: Text(
                  "I am owner",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
