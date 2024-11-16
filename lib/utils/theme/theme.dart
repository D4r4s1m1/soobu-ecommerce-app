import 'package:e_commerce/utils/theme/custom_theme/appbar_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/chip_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/elevatedButtonTheme.dart';
import 'package:e_commerce/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class  SoobuAppTheme {
  SoobuAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: SoobuTextTheme.lightTextTheme,
    elevatedButtonTheme: SoobuElevatedbuttontheme.lightElevatedButtonTheme,
    outlinedButtonTheme: SoobuOutlinedButtonTheme.lightButtonTheme,
    appBarTheme:SoobuAppbarTheme.lightAppBarTheme,
    bottomSheetTheme: SoobuBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: SoobuCheckBoxTheme.lightCheckBoxTheme,
    chipTheme: SoobuChipTheme.lightChipTheme,
  );


  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: SoobuTextTheme.darkTextTheme,
    elevatedButtonTheme: SoobuElevatedbuttontheme.darkElevatedButtonTheme,
    outlinedButtonTheme: SoobuOutlinedButtonTheme.darkButtonTheme,
    appBarTheme:SoobuAppbarTheme.darkAppBarTheme,
    bottomSheetTheme: SoobuBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: SoobuCheckBoxTheme.darkCheckBoxTheme,
    chipTheme: SoobuChipTheme.darkChipTheme,
  );
}