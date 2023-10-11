import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String txt;
  const CustomTextField({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenUtil().screenWidth;
    double screenHeight = ScreenUtil().screenHeight;
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 17),
      child: Container(
        height: screenHeight*0.07,
        width: screenWidth*0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.grey[200],
        ),
        child:  TextField(

          decoration: InputDecoration(
            labelText: txt,
            labelStyle: GoogleFonts.urbanist(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                color: Colors.grey
            ),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
          ),
        ),
      ),
    );
  }
}
