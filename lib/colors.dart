import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFFFFFF);
const kPointColor = Color(0xFFEC6A2C);
const kBlack0Color = Color(0xFF000000);

const kBlack1Color = Color(0xFF333333);
const kGray1Color = Color(0xFF595959);
const kGray2Color = Color(0xFFB8B8B8);
const kGray3Color = Color(0xFFF3F3F3);
const kBlue1Color = Color(0xFF007AFF);
const kGradation10Color = Color(0xFFFFB37C);
const kGradation11Color = Color(0xFFFFD37E);
const kWhite = Color(0xFFFFFFFF);

ThemeData get appTheme {
  final base = ThemeData.light();
  return base.copyWith(
    primaryColor: kPrimaryColor,
    accentColor: kPrimaryColor,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: kPrimaryColor,
      textTheme: ButtonTextTheme.normal,
    ),
    floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
      backgroundColor: kPrimaryColor,
    ),
  );
}
