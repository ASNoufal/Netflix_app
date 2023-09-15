import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class maintexttitle extends StatelessWidget {
  const maintexttitle({super.key, required this.test});
  final String test;
  @override
  Widget build(BuildContext context) {
    return Text(
      test,
      style: GoogleFonts.montserrat(fontSize: 30, fontWeight: FontWeight.w700),
    );
  }
}
