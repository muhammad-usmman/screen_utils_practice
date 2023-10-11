import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_utils_practice/utils/app_colors/app_colors.dart';
import 'package:screen_utils_practice/view/screens/shared_components/arrow_back_button.dart';
import 'package:screen_utils_practice/view/screens/shared_components/button.dart';
import 'package:screen_utils_practice/view/screens/shared_components/line_button.dart';
import 'package:screen_utils_practice/view/screens/shared_components/textfield/custom_text_field.dart';
import 'package:screen_utils_practice/view/screens/welcom_login/login_page/login_page.dart';
import 'package:screen_utils_practice/view/screens/welcom_login/otp_verification/otp_verification.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenUtil().screenWidth;
    double screenHeight = ScreenUtil().screenHeight;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                ArrowBackButton(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 17.0),
              child: SizedBox(
                height: screenHeight * 0.1,
                width: screenWidth * 0.80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        'Forgot Password?',
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
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: SizedBox(
                height: screenHeight * 0.1,
                width: screenWidth * 0.80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "Don't worry! It occurs. Please enter the email address linked with your account.",
                        softWrap: false,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.urbanist(
                            color: Colors.grey,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const CustomTextField(txt: 'Enter your email'),
            SizedBox(
              height: screenHeight * 0.030,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                  bttnText: 'Send Code',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OtpVerification(),
                      ),
                    );
                  },
                  bttnColor: blkColor,
                  txtColor: whiteColor,
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Remember Password?'),
                LineButton(
                    text: 'Login',
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
