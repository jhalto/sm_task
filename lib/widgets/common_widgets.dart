
  import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

   appStyle([double? fontSize, Color? color, FontWeight? fw, ]){
  return GoogleFonts.roboto(
    color: color,
    fontSize: fontSize,
    fontWeight: fw,

  );
  }

  appStyleAkatab([double? fontSize, Color? color, FontWeight? fw, ]){
    return GoogleFonts.akatab(
      color: color,
      fontSize: fontSize,
      fontWeight: fw,

    );
  }

  final Color white = Color(0xffFFFFFF);