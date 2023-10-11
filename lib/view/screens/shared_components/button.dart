import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String bttnText;
  final VoidCallback onPressed;
  final Color bttnColor;
  final Color txtColor;

  Button({
    super.key,
    required this.bttnText,
    required this.onPressed,
    required this.bttnColor,
    required this.txtColor,
  });

  final double screenWidth = ScreenUtil().screenWidth;
  final double screenHeight = ScreenUtil().screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: SizedBox(
        width: 300.w,
        height: 56.h,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: bttnColor,
            side: const BorderSide(
              color: Colors.grey,
              width: 1,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            bttnText,
            style: GoogleFonts.urbanist(
              fontSize: 15.sp,
              color: txtColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
