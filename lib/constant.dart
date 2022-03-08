import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Styles {
  static Color scaffoldBackgroundColor = const Color(0xFFe0efff);
  static Color defaultRedColor = const Color(0xffff698a);
  static Color defaultYellowColor = const Color(0xFFfedd69);
  static Color defaultBlueColor = const Color(0xff52beff);
  static Color defaultGreyColor = const Color(0xff77839a);
  static Color defaultLightGreyColor = const Color(0xffc4c4c4);
  static Color defaultLightWhiteColor = const Color(0xFFf2f6fe);

  static double defaultPadding = 18.0;

  static BorderRadius defaultBorderRadius = BorderRadius.circular(20);

  static ScrollbarThemeData scrollbarTheme =
      const ScrollbarThemeData().copyWith(
    thumbColor: MaterialStateProperty.all(defaultYellowColor),
    isAlwaysShown: false,
    interactive: true,
  );
}

///----Colours----///
const Color kPurple = Color(0xFF531CF7);
const Color kPurple80 = Color(0xFF2B2B2C);
const Color kPurple60 = Color(0xFFB298FF);
const Color kPurple40 = Color(0xFFD3C5FF);
const Color kPurple20 = Color(0xFFEEE9FF);
const Color kblue = Color(0xff52beff);

const Color kFuchsia = Color(0xFFFC4684);
const Color kFuchsia80 = Color(0xFFFF7DA9);
const Color kFuchsia60 = Color(0xFFFFACC8);
const Color kFuchsia40 = Color(0xFFFFD4E3);
const Color kFuchsia20 = Color(0xFFFFE9F0);

const Color kOrange = Color(0xFFFF7448);
const Color kOrange80 = Color(0xFFFF9877);
const Color kOrange60 = Color(0xFFFFCEBE);
const Color kOrange40 = Color(0xFFFFDBCF);
const Color kOrange20 = Color(0xFFFFF0EB);

const Color kRed = Color(0xFFEF233C);
const Color kRed80 = Color(0xFFFA6678);
const Color kRed60 = Color(0xFFFFACB6);
const Color kRed40 = Color(0xFFFFD4D9);
const Color kRed20 = Color(0xFFFFE9EC);

const Color kBlue = Color(0xFF27A8F8);
const Color kBlue80 = Color(0xFF52BDFF);
const Color kBlue60 = Color(0xFF90D5FF);
const Color kBlue40 = Color(0xFFC1E7FF);
const Color kBlue20 = Color(0xFFE1F3FF);

const Color kGreen = Color(0xFF52DBB9);
const Color kGreen80 = Color(0xFF85EBD1);
const Color kGreen60 = Color(0xFFBAF2E4);
const Color kGreen40 = Color(0xFFD0F9EF);
const Color kGreen20 = Color(0xFFE8FDF8);

const Color kDark = Color(0xFF353535);
const Color kDark80 = Color(0xFF727272);
const Color kDark60 = Color(0xFFBDBDBD);
const Color kDark40 = Color(0xFFD7D7D7);
const Color kDark20 = Color(0xFFF4F4F4);

///----Paddings----///
const double kDefaultPadding = 16.0;
const double kDefaultPadding2x = 32.0;

///----TextStyles----///
const TextStyle kHeading = TextStyle(fontWeight: FontWeight.bold, fontSize: 28);
const TextStyle kHeadingLight =
    TextStyle(fontWeight: FontWeight.normal, fontSize: 28);
const TextStyle kBody = TextStyle(fontWeight: FontWeight.normal, fontSize: 14);
const TextStyle kBodyBold =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 14);
const TextStyle kButtonText =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
const TextStyle kFootNote =
    TextStyle(fontWeight: FontWeight.normal, fontSize: 11);
