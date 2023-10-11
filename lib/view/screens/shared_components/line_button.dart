import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_utils_practice/utils/app_colors/app_colors.dart';

class LineButton extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  const LineButton({super.key, required this.text, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onpressed,
        child: Text(
          text,
          style: GoogleFonts.urbanist(
            color: blueColor,
            fontWeight: FontWeight.w700,
            fontSize: 15,
          ),
        ));
  }
}
