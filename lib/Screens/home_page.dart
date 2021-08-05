import 'package:flutter/material.dart';
import '../constants.dart';
import 'welcome_screen.dart';
import 'package:page_transition/page_transition.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '',
          style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
              color: kPrimaryColor, borderRadius: BorderRadius.circular(10)),
          child: TextButton(
            onPressed: () {
              Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: WelcomeScreen()));
            },
            child: Text(
              'Back to Welcome Page',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20), 
            ),
          ),
        ),
      ),
    );
  }
}