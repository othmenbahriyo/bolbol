import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/utils.dart';
import 'package:weather/app/constants/strings/string.dart';


ThemeData lightThemes() {
  const OutlineInputBorder myInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(width: 1, color: Color(0xff858585)));

  return ThemeData.light().copyWith(
    backgroundColor: const Color(0xffF3F9FE),
    appBarTheme: const AppBarTheme(
      color:  Colors.white,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
      iconTheme: IconThemeData(
          color: Colors.black
      ) ,
    ),

    dataTableTheme: const DataTableThemeData(

      dataTextStyle: TextStyle(color: Colors.black),
    ) ,
    dialogTheme:const DialogTheme(
      contentTextStyle: TextStyle(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.black),

    ),
    listTileTheme:const ListTileThemeData(
      textColor:  Colors.black
    ) ,

    popupMenuTheme:const PopupMenuThemeData(
      textStyle: TextStyle(color: Colors.black),
    ) ,
    inputDecorationTheme: const InputDecorationTheme  (
        fillColor: Colors.transparent,

        //labelStyle: TextStyle(color: Colors.red),
        hintStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 14,
            fontFamily: Constants.font),
        border: myInputBorder,
        enabledBorder: myInputBorder,
        focusedBorder: myInputBorder,
        filled: true,
        isDense: true,
        contentPadding: EdgeInsets.all(16),
        focusColor: Color(0xFF5AC8FA)
        ),
    primaryColor: const Color(0xFF2C8BFE),
    scaffoldBackgroundColor: Colors.white,
    primaryTextTheme: const TextTheme(
      headline1: TextStyle(
          fontSize:  32 ,
          fontWeight: FontWeight.w700,
          fontFamily: Constants.font,
          color: Color(0xff32324d)),
      headline2: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: Constants.font,
          color: Colors.black),
      headline3: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          fontFamily: Constants.font,
          color: Colors.black),
      headline4: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          fontFamily: Constants.font,
          color: Colors.black),
      headline5: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontFamily: Constants.font,
          color: Colors.black),
      headline6: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontFamily: Constants.font,
          color: Colors.black),
      bodyText1: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: Constants.font,
          color: Colors.black),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),    ),
    accentTextTheme: const TextTheme(
      headline1: TextStyle(
          fontSize:  32 ,
          fontWeight: FontWeight.w700,
          fontFamily: Constants.font,
          color: Color(0xff32324d)),
      headline2: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: Constants.font,
          color: Colors.black),
      headline3: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          fontFamily: Constants.font,
          color: Colors.black),
      headline4: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          fontFamily: Constants.font,
          color: Colors.black),
      headline5: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontFamily: Constants.font,
          color: Colors.black),
      headline6: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontFamily: Constants.font,
          color: Colors.black),
      bodyText1: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: Constants.font,
          color: Colors.black),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize:  32 ,
          fontWeight: FontWeight.w700,
          fontFamily: Constants.font,
          color: Color(0xff32324d)),
      headline2: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: Constants.font,
          color: Colors.black),
      headline3: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          fontFamily: Constants.font,
          color: Colors.black),
      headline4: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          fontFamily: Constants.font,
          color: Colors.black),
      headline5: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontFamily: Constants.font,
          color: Colors.black),
      headline6: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontFamily: Constants.font,
          color: Colors.black),
      bodyText1: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: Constants.font,
          color: Colors.black),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),    ),

    // colorScheme: const ColorScheme(
    //   background: Colors.white,
  );
}