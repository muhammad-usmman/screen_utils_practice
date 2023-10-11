import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screen_utils_practice/view/screens/shared_components/button.dart';
import 'package:screen_utils_practice/view/screens/shared_components/line_button.dart';
import 'package:screen_utils_practice/view/screens/welcom_login/register/register.dart';

import '../../../../utils/app_colors/app_colors.dart';
import '../login_page/login_page.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenUtil().screenWidth;
    double screenHeight = ScreenUtil().screenHeight;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/wlcmBg.png",
            width: screenWidth,
            height: screenHeight,
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/Branding.png",
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.4,
                  fit: BoxFit.fitWidth,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Button(
                      bttnText: 'Login',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      bttnColor: blkColor,
                      txtColor: whiteColor,
                    ),
                  ],
                ),
                Button(
                  bttnText: 'Register',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  },
                  bttnColor: whiteColor,
                  txtColor: blkColor,
                ),
                SizedBox(
                  height: 5.h,
                ),
                LineButton(
                    text: 'Continue as a guesst',
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterPage(),
                        ),
                      );
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
