import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_utils_practice/utils/app_colors/app_colors.dart';
import 'package:screen_utils_practice/view/screens/shared_components/arrow_back_button.dart';
import 'package:screen_utils_practice/view/screens/shared_components/button.dart';
import 'package:screen_utils_practice/view/screens/shared_components/custom_text.dart';
import 'package:screen_utils_practice/view/screens/shared_components/direct_login_buttons/direct_login_button.dart';
import 'package:screen_utils_practice/view/screens/shared_components/line_button.dart';
import 'package:screen_utils_practice/view/screens/shared_components/textfield/custom_text_field.dart';
import 'package:screen_utils_practice/view/screens/welcom_login/forgot_password/forgot_password.dart';

import '../../shared_components/textfield/custom_password_text_field.dart';
import '../register/register.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenUtil().screenWidth;
    double screenHeight = ScreenUtil().screenHeight;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      // ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          height: screenHeight*0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  ArrowBackButton(),
                ],
              ),
              Row(
                children: [
                  const CustomText(txt: 'Welcome back! Glad to see you, Again!'),
                ],
              ),
              SizedBox(height: 5.h,),

              Row(
                children: [
                  const CustomTextField(txt: 'Enter your email'),
                ],
              ),
              Row(
                children: [
                  const CustomPasswordTextField(
                    txt: 'Password',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 17.0, top: 5),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgotPassword(),
                          ),
                        );
                      },
                      child: Text(
                        'Forgot Password?',
                        style: GoogleFonts.urbanist(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            decorationThickness: 2),
                      ),
                    ),
                  ),
                ],
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 1.h,
                    width: screenWidth * 0.3,

                    color: Colors.grey, // Specify the color of the line
                  ),
                  const Text('Or Login with'),
                  Container(
                    height: 1.h,
                    width: screenWidth * 0.3,

                    color: Colors.grey, // Specify the color of the line
                  ),
                  Divider(
                    thickness: 2,
                    height: 50.h, // Specify the height of the line
                    color: Colors.black, // Specify the color of the line
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DirectLoginButton(
                    imgUrl: 'assets/facebook.png',
                    onpressed: () {},
                  ),
                  DirectLoginButton(
                    imgUrl: 'assets/google.png',
                    onpressed: () {},
                  ),
                  DirectLoginButton(
                    imgUrl: 'assets/apple.png',
                    onpressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 20.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text('Dont have an account?'),
                  LineButton(
                    text: 'Register Now',
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterPage(),
                        ),
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
