import 'package:flutter/material.dart';
import '../../constants.dart';
import 'text_field_container.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final String text;
  //final FormFieldSetter<String> onSaved;
  FormFieldValidator validator;
  //TextEditingController controller = TextEditingController();
  
  RoundedPasswordField({
    Key? key,
    required this.onChanged,
    required this.text,
    required this.validator,
  })  : super(key: key);
  
  @override
  _RoundedPasswordFieldState createState() => new _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: _obscureText,
        onChanged: widget.onChanged,
        validator: widget.validator,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: widget.text,
          //enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: 3, color: kPrimaryColor)),
          border: InputBorder.none,
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(width: 3, color: kPrimaryColor)),
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: new GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child:
              new Icon(_obscureText ? Icons.visibility : Icons.visibility_off,
              color: kPrimaryColor,
              ),
          ),
        ),
      ),
    );
  }
}