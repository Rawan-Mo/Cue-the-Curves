import 'package:cue_the_curves/Screens/home_page.dart';
import 'package:cue_the_curves/constants.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'components/already_have_an_account_check.dart';
import 'components/rounded_button.dart';
import 'components/rounded_input_field.dart';
import 'components/rounded_password_field.dart';
import 'signup_screen.dart';
import 'components/outlined_text.dart';
import 'components/validators.dart';


class LoginScreen extends StatelessWidget {
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
  Body({
    Key? key,
  }) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //SizedBox(height: size.height * 0.03),
              Image.asset(
                Logo,
                height: size.height * 0.29,
              ),
              SizedBox(height: size.height * 0.03),
              OutlinedText(text: "Login", fontSize: 40),
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: "Email",
                onChanged: (value) => emailController.text = value,
                validator: emailVal,
              ),
              RoundedPasswordField(
                onChanged: (value) => passController.text = value,
                validator: passVal,
                text: "Password",
              ),
              RoundedButton(
                text: "LOGIN",
                textColor: Colors.black,
                press: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context, PageTransition(type: PageTransitionType.fade, child: HomePage())
                      );
                    }
                },
              ),
              SizedBox(height: size.height * 0.02),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.push(
                    context, PageTransition(type: PageTransitionType.fade, child: SignUpScreen())
                  );
                },
              ),
              SizedBox(height: size.height * 0.20),
            ],
          ),
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
      width: double.infinity,
      height: size.height,
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