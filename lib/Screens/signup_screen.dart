import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:cue_the_curves/Screens/home_page.dart';
import 'components/already_have_an_account_check.dart';
import 'components/or_divider.dart';
import 'components/rounded_button.dart';
import 'components/rounded_input_field.dart';
import 'components/rounded_password_field.dart';
import 'components/social_icon.dart';
import 'login_screen.dart';
import 'components/outlined_text.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.white,
      ),
      body: Body(),
    );
  }
}

// Body:

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedText(text: "Sign Up", fontSize: 40),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "First Name",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Last Name",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
              text: "Password",
            ),
            RoundedPasswordField(
              onChanged: (value) {},
              text: "Confirm Password",
            ),
            RoundedButton(
              text: "SIGN UP",
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context, PageTransition(type: PageTransitionType.fade, child: HomePage())
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context, PageTransition(type: PageTransitionType.fade, child: LoginScreen())
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "assets/icons/Facebook.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/Twitter.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/Google.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// Background:

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
              width: size.width * 0.35,
            ),
          ),
          child,
        ],
      ),
    );
  }
}