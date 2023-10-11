import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screen_utils_practice/utils/app_colors/app_colors.dart';

class DirectLoginButton extends StatelessWidget {
  final String imgUrl;
  final VoidCallback onpressed;

  const DirectLoginButton({
    super.key,
    required this.imgUrl,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47.h,
      width: 90.w,
      child: ElevatedButton(
        onPressed:onpressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: whiteColor,
          side: const BorderSide(
            color: Colors.grey,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Image.asset(imgUrl),
      ),
    );
  }
}
