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
import '../../constants.dart';
import 'components/text_field_container.dart';
import 'components/validators.dart';

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
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    TextEditingController confirmPassController = TextEditingController();
    FormFieldValidator confirmPassVal = (text) {
      RegExp length = new RegExp(r'^.{8,}');
      RegExp upper = new RegExp('(?:[A-Z])');
      RegExp lower = new RegExp('(?:[a-z])');
      RegExp num = new RegExp('([0-9])');

      if (text == null || text.isEmpty) {
        return 'Cannot be Empty';
      }
      else if(!length.hasMatch(text)){
        return 'Must be 8 characters';
      }
      else if(!upper.hasMatch(text)){
        return 'Must have one capital letter';
      }
      else if(!lower.hasMatch(text)){
        return 'Must have one lower case letter';
      }
      else if(!num.hasMatch(text)){
        return 'Must have one number';
      }
      else if(text != passController.text){
        return 'Passwords must match';
      }
      return null;
    };

    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlinedText(text: "Sign Up", fontSize: 40),
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: "First Name",
                onChanged: (value) => firstNameController.text = value,
                validator: emptyVal
              ),
              
              RoundedInputField(
                hintText: "Last Name",
                onChanged: (value) => lastNameController.text = value,
                validator: emptyVal
              ),
              RoundedInputField(
                hintText: "Email",
                onChanged: (value) => emailController.text = value,
                validator: emailVal
              ),
              RoundedPasswordField(
                onChanged: (value) => passController.text = value,
                validator: passVal,
                text: "Password",
              ),
              RoundedPasswordField(
                onChanged: (value) => confirmPassController.text = value,
                validator: confirmPassVal,
                text: "Confirm Password",
              ),
              RoundedButton(
                text: "SIGN UP",
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