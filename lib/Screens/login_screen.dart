import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:page_transition/page_transition.dart';

import 'home_page.dart';
import '../constants.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Cue the Curves',
      logo: Logo,
      onLogin: (_) => null,
      onSignup: (_) => null,
      disableCustomPageTransformer: false,
      //transformer: CustomPageTransformer(),
      onSubmitAnimationCompleted: () {
        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: HomePage()));
        //Navigator.of(context).pushReplacement(MaterialPageRoute(
          //builder: (context) => HomePage(),
        //));
      },
      onRecoverPassword: (_) => null,
      theme: LoginTheme(
        titleStyle: TextStyle(color: Colors.white), //title
        bodyStyle: TextStyle(color: Colors.black), //forgot password text
        //textFieldStyle: TextStyle(color: Colors.black),
        //cardTheme: CardTheme(color: Colors.yellow.shade100,),
        
        inputTheme: InputDecorationTheme(
          filled: true,
          labelStyle: TextStyle(color: Colors.black), //email and password text
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor, width: 3),
          ),
        ),

        buttonStyle: TextStyle(color: Colors.white), //orange button text color
        switchAuthTextColor: Colors.black, //signup button color

      ),
    );
  }
}