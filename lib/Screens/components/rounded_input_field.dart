import 'package:flutter/material.dart';

import '../../constants.dart';
import 'text_field_container.dart';

class RoundedInputField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  //TextEditingController controller = TextEditingController();
  FormFieldValidator validator;
  
  @override
  RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
    required this.validator,
  }) : super(key: key);
  _RoundedInputField createState() => _RoundedInputField();
}

class _RoundedInputField extends State<RoundedInputField> {

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        onChanged: widget.onChanged, 
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          //enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: 3, color: kPrimaryColor)),
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(width: 3, color: kPrimaryColor)),
          border: InputBorder.none,
          icon: Icon(
            widget.icon,
            color: kPrimaryColor,
          ),
          hintText: widget.hintText,
        ),
        validator: widget.validator,
      ),
    );
  }
}
