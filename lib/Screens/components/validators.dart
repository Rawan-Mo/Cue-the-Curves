import 'package:flutter/material.dart';

FormFieldValidator emptyVal = (text) {
  if (text == null || text.isEmpty) {
    return 'Cannot be Empty';
  }
  return null;
};

FormFieldValidator emailVal = (text) {
  if (text == null || text.isEmpty) {
    return 'Cannot be Empty';
  }
  else if(!text.contains("@")){
    return 'Incorrect Email Form';
  }
  return null;
};

FormFieldValidator passVal = (text) {

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
  return null;
};

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
  return null;
};

