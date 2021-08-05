import 'package:flutter/material.dart';
import '../constants.dart';
import 'login_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'signup_screen.dart';
import 'components/outlined_text.dart';


class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedText(text: "Welcome to: \n Cue the Curves", fontSize: 40),
            SizedBox(height: size.height * 0.05),
            Image.asset(
              WelcomeLogo,
              height: size.height * 0.40,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              textColor: Colors.black,
              press: () {
                Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: LoginScreen()));
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: SignUpScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width * 0.3,
            ),
          ),
          child,
        ],
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: 
        ElevatedButton(
          child: Padding(
                 padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                 child: Text(text, style: TextStyle(color: textColor))),
          onPressed: press,
          style: ElevatedButton.styleFrom(
            primary: color
          ),
          ),
        ),
      );
  }
}