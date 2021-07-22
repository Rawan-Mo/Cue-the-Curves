import 'package:cue_the_curves/Screens/Login/login_screen.dart';
import 'package:cue_the_curves/Screens/Signup/components/background.dart';
import 'package:cue_the_curves/Screens/Signup/components/or_divider.dart';
import 'package:cue_the_curves/Screens/Signup/components/social_icon.dart';
import 'package:cue_the_curves/components/already_have_an_account_check.dart';
import 'package:cue_the_curves/components/rounded_button.dart';
import 'package:cue_the_curves/components/rounded_input_field.dart';
import 'package:cue_the_curves/components/rounded_password_field.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Create your account",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            // SvgPicture.asset(
            //  "assets/icons/signup.svg",
            //  height: size.height * 0.35,
            //),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
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