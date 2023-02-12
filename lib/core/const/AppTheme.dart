
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../values/values.dart';
import 'AppColor.dart';
import 'AppString.dart';

class AppTheme {
  static const _lightFillColor = Colors.black;

  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);

  static ThemeData lightThemeData =
  themeData(lightColorScheme, _lightFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: _textTheme,
      iconTheme: IconThemeData(color: AppColor.white),
      canvasColor: colorScheme.background,
      appBarTheme: AppBarTheme(
        color: AppColor.primaryColor,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColor.black,
        selectionColor: AppColor.textSelectionColor,
        selectionHandleColor: AppColor.primaryColor,
      ),
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      accentColor: colorScheme.primary,
      focusColor: AppColor.primaryColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  static  ColorScheme lightColorScheme = ColorScheme(
    primary: AppColor.primaryColor,
    primaryVariant: AppColor.primaryColor,
    secondary: AppColor.secondaryColor,
    secondaryVariant: AppColor.black,
    background: AppColor.primaryColor,
    surface: AppColor.primaryColor,
    onBackground: Colors.white,
    error: _lightFillColor,
    onError: _lightFillColor,
    onPrimary: _lightFillColor,
    onSecondary: Color(0xFF322942),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static const _bold = FontWeight.w700;
  static const _semiBold = FontWeight.w600;
  static const _medium = FontWeight.w500;
  static const _regular = FontWeight.w400;
  static const _light = FontWeight.w300;

  static final TextTheme _textTheme = TextTheme(
    headline1: TextStyle(
      fontFamily: AppString.VISUELT_PRO,
      fontSize: Sizes.TEXT_SIZE_96,
      color: AppColor.black,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headline2: TextStyle(
      fontFamily: AppString.VISUELT_PRO,
      fontSize: Sizes.TEXT_SIZE_60,
      color: AppColor.black,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headline3: GoogleFonts.roboto(
      fontSize: Sizes.TEXT_SIZE_48,
      color: AppColor.black,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headline4: TextStyle(
      fontFamily: AppString.VISUELT_PRO,
      fontSize: Sizes.TEXT_SIZE_34,
      color: AppColor.black,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headline5: GoogleFonts.roboto(
      fontSize: Sizes.TEXT_SIZE_24,
      color: AppColor.black,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headline6: TextStyle(
      fontFamily: AppString.VISUELT_PRO,
      fontSize: Sizes.TEXT_SIZE_20,
      color: AppColor.black,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    subtitle1: TextStyle(
      fontFamily: AppString.VISUELT_PRO,
      fontSize: Sizes.TEXT_SIZE_16,
      color: AppColor.secondaryColor,
      fontWeight: _semiBold,
      fontStyle: FontStyle.normal,
    ),
    subtitle2: GoogleFonts.roboto(
      fontSize: Sizes.TEXT_SIZE_14,
      color: AppColor.secondaryColor,
      fontWeight: _semiBold,
      fontStyle: FontStyle.normal,
    ),
    bodyText1: TextStyle(
      fontFamily: AppString.VISUELT_PRO,
      fontSize: Sizes.TEXT_SIZE_16,
      color: AppColor.secondaryColor,
      fontWeight: _light,
      fontStyle: FontStyle.normal,
    ),
    bodyText2: GoogleFonts.roboto(
      fontSize: Sizes.TEXT_SIZE_14,
      color: AppColor.secondaryColor,
      fontWeight: _light,
      fontStyle: FontStyle.normal,
    ),
    button: GoogleFonts.roboto(
      fontSize: Sizes.TEXT_SIZE_14,
      color: AppColor.secondaryColor,
      fontStyle: FontStyle.normal,
      fontWeight: _medium,
    ),
    caption: TextStyle(
      fontFamily: AppString.VISUELT_PRO,
      fontSize: Sizes.TEXT_SIZE_12,
      color: AppColor.white,
      fontWeight: _regular,
      fontStyle: FontStyle.normal,
    ),
  );
}
