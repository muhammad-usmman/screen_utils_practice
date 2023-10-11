import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String txt;

  const CustomText({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenUtil().screenWidth;
    double screenHeight = ScreenUtil().screenHeight;
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 17.0),
      child: Container(
        // color: Colors.green,
        height: screenHeight * 0.15,
        width: screenWidth * 0.80,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                txt,
                softWrap: false,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.urbanist(
                    color: Colors.grey.shade800,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
