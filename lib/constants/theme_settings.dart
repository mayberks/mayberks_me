import 'package:flutter/material.dart';

const mainDefaultPadding = 20.0;

final mainDefaultShadow = BoxShadow(
  offset: Offset(0, 50),
  blurRadius: 50,
  color: Color.fromRGBO(7, 0, 177, 1).withOpacity(0.15),
);

final mainDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

final mainDefaultInputDecoration = InputDecorationTheme(
  border: mainDefaultOutlineInput,
  enabledBorder: mainDefaultOutlineInput,
  focusedBorder: mainDefaultOutlineInput,
);

final mainDefaultOutlineInput = OutlineInputBorder(
  borderSide: BorderSide(
    color: Color.fromRGBO(206, 228, 253, 1),
  ),
);
