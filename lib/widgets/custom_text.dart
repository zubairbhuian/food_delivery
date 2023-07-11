import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//    ####### Small Text ########

class ExtraSmallText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final dynamic fontWeight;
  final dynamic textAlign;

  const ExtraSmallText(
      {required this.text,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.textAlign,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(text,
      textAlign: textAlign ?? TextAlign.start,
      style: GoogleFonts.inter(
          textStyle: TextStyle(
              color: color ?? const Color.fromARGB(234, 24, 24, 24),
              fontSize: fontSize ?? 13,
              fontWeight: fontWeight ?? FontWeight.w400)));
}

//    ####### Small Text ########

class SmallText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final dynamic fontWeight;
  final dynamic textAlign;

  const SmallText(
      {required this.text,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.textAlign,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(text,
      textAlign: textAlign ?? TextAlign.start,
      style: GoogleFonts.inter(
          textStyle: TextStyle(
              color: color ?? const Color.fromARGB(234, 24, 24, 24),
              fontSize: fontSize ?? 14,
              fontWeight: fontWeight ?? FontWeight.w400)));
}

//    ####### Regular Text ########

class RegularText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final dynamic fontWeight;
  final dynamic textAlign;

  const RegularText(
      {required this.text,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.textAlign,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(text,
      textAlign: textAlign ?? TextAlign.start,
      style: GoogleFonts.inter(
          textStyle: TextStyle(
              color: color ?? const Color.fromARGB(234, 24, 24, 24),
              fontSize: fontSize ?? 15,
              fontWeight: fontWeight ?? FontWeight.w400)));
}

//   ####### Big Text ########

class BigText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final dynamic fontWeight;
  final dynamic textAlign;

  const BigText(
      {required this.text,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.textAlign,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(text,
      textAlign: textAlign ?? TextAlign.start,
      style: GoogleFonts.inter(
          textStyle: TextStyle(
              color: color ??const Color.fromARGB(234, 24, 24, 24),
              fontSize: fontSize ?? 20,
              fontWeight: fontWeight ?? FontWeight.w600)));
}

//    ####### ExtraBig Text ########
class ExtraBigText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final dynamic fontWeight;
  final dynamic textAlign;

  const ExtraBigText(
      {required this.text,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.textAlign,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Text(text,
      textAlign: textAlign ?? TextAlign.start,
      style: GoogleFonts.inter(
          textStyle: TextStyle(
              color: color ??const Color.fromARGB(234, 24, 24, 24),
              fontSize: fontSize ?? 30,
              fontWeight: fontWeight ?? FontWeight.w600)));
}
