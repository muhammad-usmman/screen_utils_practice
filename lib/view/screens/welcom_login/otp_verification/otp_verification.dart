import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_utils_practice/utils/app_colors/app_colors.dart';
import 'package:screen_utils_practice/view/screens/shared_components/arrow_back_button.dart';
import 'package:screen_utils_practice/view/screens/shared_components/button.dart';
import 'package:screen_utils_practice/view/screens/shared_components/line_button.dart';
import 'package:screen_utils_practice/view/screens/shared_components/textfield/custom_text_field.dart';

import '../new_pasword/new_password.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenUtil().screenWidth;
    double screenHeight = ScreenUtil().screenHeight;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
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
                      'OTP Verification',
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
                      "Enter the verification code we just sent on your email address.",
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
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: OtpTextField(
              numberOfFields: 4,
              fieldWidth: 60.h,
              borderColor: Colors.blue,
              enabledBorderColor: Colors.grey,


              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    }
                );
              }, // end onSubmit
            ),
          ),
          SizedBox(
            height: screenHeight * 0.030,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(
                bttnText: 'Verify',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NewPassword(),
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
              const Text("Didn’t received code?"),
              LineButton(
                  text: 'Resend',
                  onpressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OtpVerification(),
                      ),
                    );
                  }),
            ],
          )
        ],
      ),
    );
  }
}
