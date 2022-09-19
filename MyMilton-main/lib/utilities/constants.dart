import 'package:flutter/material.dart';

const kHintTextStyle = TextStyle(
  color: Color(0xFF787878),
  fontFamily: 'OpenSans',
);

const kLabelStyle = TextStyle(
  color: Color(0xFF787878),
  // fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

const kLabelStyleAccent = TextStyle(
  color: Color(0xFF0073AE),
  // fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color(0xFFEDEFF2),
  borderRadius: BorderRadius.circular(20.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);