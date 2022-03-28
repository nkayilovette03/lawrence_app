import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lorrence_app/app/data/theme/colors.dart';

class AppThemes {
  AppThemes._();

  // ----- light theme color var -----
  static const _lightPrimaryColor = primary;
  static const _lightBackgroundColor = appBgColor;
  static const _lightTextColor = darker;

  // ----- dark theme color var -----
  static const _darkPrimaryColor = dark;

  // light theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: _lightBackgroundColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: appBgColor,
    ),
    appBarTheme: AppBarTheme(
      color: _lightBackgroundColor,
      toolbarTextStyle: TextStyle(
        color: _lightPrimaryColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
      ),
      titleTextStyle: TextStyle(
          color: _lightTextColor,
          fontSize: 20.0,
          fontWeight: FontWeight.w800,
          fontFamily: 'SFProM'),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
          color: _lightTextColor,
          fontSize: 20.0,
          fontWeight: FontWeight.w800,
          fontFamily: 'SFProL'),
      headline2: TextStyle(
        color: _lightTextColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
        fontFamily: 'SFProL',
      ),
      headline3: TextStyle(
        color: _lightTextColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
        fontFamily: 'SFProL',
      ),
      headline4: TextStyle(
        color: _lightTextColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
        fontFamily: 'SFProL',
      ),
      headline5: TextStyle(
        color: _lightTextColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
        fontFamily: 'SFProL',
      ),
      headline6: TextStyle(
        color: _lightTextColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
      ),
      subtitle1: TextStyle(
        color: _lightTextColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
      ),
      subtitle2: TextStyle(
        color: _lightTextColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
      ),
      bodyText1: TextStyle(
        color: _lightTextColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
      ),
      bodyText2: TextStyle(
        color: _lightTextColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
      ),
      button: TextStyle(
        color: _lightTextColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
      ),
      caption: TextStyle(
        color: _lightTextColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
      ),
      overline: TextStyle(
        color: _lightTextColor,
        fontSize: 20.0,
      ),
    ),
  );

  // dark theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: _darkPrimaryColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.red,
    ),
    appBarTheme: AppBarTheme(
      color: _darkPrimaryColor,
      toolbarTextStyle: TextStyle(
        color: _lightPrimaryColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
      ),
      titleTextStyle: TextStyle(
        color: appBgColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w400,
      ),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        color: _lightBackgroundColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
      ),
      headline2: TextStyle(
        color: _lightBackgroundColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
      ),
      headline3: TextStyle(
        color: _lightBackgroundColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
      ),
      headline4: TextStyle(
        color: _lightBackgroundColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
      ),
      headline5: TextStyle(
        color: _lightBackgroundColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
      ),
      headline6: TextStyle(
        color: _lightBackgroundColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
      ),
      subtitle1: TextStyle(
        color: _lightBackgroundColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
      ),
      subtitle2: TextStyle(
        color: _lightBackgroundColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
      ),
      bodyText1: TextStyle(
        color: _lightBackgroundColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
      ),
      bodyText2: TextStyle(
        color: _lightBackgroundColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
      ),
      button: TextStyle(
        color: _lightBackgroundColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w800,
      ),
    ),
  );
}
