import 'package:flutter/material.dart';

class Constants {
  static const font = "Poppins";
  static const primaryColor = Color(0xff49622F);
  static const secondaryColor =  Color(0xFFC7D36F);
  static const blueDark =   Color(0xff1B2535);
  static const String FirstItem = 'Logout';
  static const String SecondItem = 'Second Item';
  static const String ThirdItem = 'Third Item';
  // static const String BASE_URL = 'https://huilerie-erp-api.groupecharfi.com';
  static const String BASE_URL = 'https://huilerie-api.zetabox.tn';

  static const List<String> choices = <String>[
    FirstItem,
  ];

  static final OutlineInputBorder border = OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(5.0)),
      borderSide: BorderSide(
          color: const Color(0xff161616).withOpacity(0.6), width: 1));
}
