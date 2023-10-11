import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_utils_practice/utils/app_colors/app_colors.dart';
import 'package:screen_utils_practice/view/screens/shared_components/arrow_back_button.dart';
import 'package:screen_utils_practice/view/screens/shared_components/button.dart';
import '../../shared_components/textfield/custom_password_text_field.dart';
import '../password_changed/passwordchanged.dart';


class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

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
                height: screenHeight * 0.15,
                width: screenWidth * 0.80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        'Create new Password',
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
                        "Your new password must be unique from those previously used.",
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

            const CustomPasswordTextField(txt: 'New Password',),
            const CustomPasswordTextField(txt: 'Confirm Password',),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                  bttnText: 'Reset Password ',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PasswordChanged(),
                      ),
                    );
                  },
                  bttnColor: blkColor,
                  txtColor: whiteColor,
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
