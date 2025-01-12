import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class TextStyles {
  static TextStyle s30w800cBlack = GoogleFonts.manrope(
      textStyle: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w800,
          color: Colors.black,
          fontStyle: FontStyle.italic));
  static TextStyle s12w600cGrey = GoogleFonts.manrope(
      textStyle: const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: Colors.grey,
  ));
  static TextStyle s20w700cBlack = GoogleFonts.manrope(
      textStyle: const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  ));
  static TextStyle s15w600cGrey = GoogleFonts.manrope(
      textStyle: const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: Colors.grey,
  ));
  static TextStyle s18w600cBlack = GoogleFonts.manrope(
      textStyle: const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  ));
  static TextStyle s16w600cBlack = GoogleFonts.manrope(
      textStyle: const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  ));
  static TextStyle s12w500cGrey = GoogleFonts.manrope(
      textStyle: const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.grey,
  ));
  static TextStyle s10w500cGrey = GoogleFonts.manrope(
      textStyle: const TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: Colors.grey,
  ));
  static TextStyle s12w800cWhite = GoogleFonts.manrope(
      textStyle: const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w800,
    color: Colors.white,
  ));
  static TextStyle s16w600cGrey = GoogleFonts.manrope(
      textStyle: const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.grey,
  ));
  static TextStyle s10w500cPurple = GoogleFonts.manrope(
      textStyle: const TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: Color(0xff7F00FF),
  ));
  static TextStyle s14w600cDarkGrey = GoogleFonts.manrope(
      textStyle: const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Color(0xff71797E),
  ));
}
