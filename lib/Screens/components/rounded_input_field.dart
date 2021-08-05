import 'package:flutter/material.dart';

import '../../constants.dart';
import 'text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(   
          //enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: 3, color: kPrimaryColor)),
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(width: 3, color: kPrimaryColor)),
          border: InputBorder.none,
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          
        ),
      ),
    );
  }
}