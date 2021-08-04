import 'package:flutter/material.dart';
import '../constants.dart';
import 'welcome_screen.dart';

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
          'Home Page',
          style: TextStyle(color: Colors.white, fontSize: 25),
          ),
      ),
      body: Center(
        child: Container(
          height: 80,
          width: 200,
          decoration: BoxDecoration(
              color: kPrimaryColor, borderRadius: BorderRadius.circular(10)),
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => WelcomeScreen(),
              ));
            },
            child: Text(
              'Back to Welcome Page',
              style: TextStyle(color: Colors.white, fontSize: 20), 
            ),
          ),
        ),
      ),
    );
  }
}