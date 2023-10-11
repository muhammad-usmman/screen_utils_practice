import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screen_utils_practice/utils/app_colors/app_colors.dart';
import 'package:screen_utils_practice/view/screens/shared_components/arrow_back_button.dart';
import 'package:screen_utils_practice/view/screens/shared_components/button.dart';
import 'package:screen_utils_practice/view/screens/shared_components/custom_text.dart';
import 'package:screen_utils_practice/view/screens/shared_components/direct_login_buttons/direct_login_button.dart';
import 'package:screen_utils_practice/view/screens/shared_components/line_button.dart';
import 'package:screen_utils_practice/view/screens/shared_components/textfield/custom_text_field.dart';
import '../../shared_components/textfield/custom_password_text_field.dart';
import '../login_page/login_page.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenUtil().screenWidth;
    double screenHeight = ScreenUtil().screenHeight;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: whiteColor,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          height: screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  ArrowBackButton(),
                ],
              ),
              const CustomText(txt: 'Hello! Register to get started'),
              const CustomTextField(txt: 'Username'),
              const CustomTextField(txt: 'Email'),

              const CustomPasswordTextField(txt: 'Password',),
              const CustomPasswordTextField(txt: 'Confirm Password',),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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

                    color: Colors.grey,
                  ),
                  const Text('Or Register with'),
                  Container(
                    height: 1.h,
                    width: screenWidth * 0.3,

                    color: Colors.grey,
                  ),
                  Divider(
                    thickness: 2,
                    height: 50.h,
                    color: Colors.black,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DirectLoginButton(imgUrl: 'assets/facebook.png', onpressed: () {},),
                  DirectLoginButton(imgUrl: 'assets/google.png', onpressed: () {},),
                  DirectLoginButton(imgUrl: 'assets/apple.png', onpressed: () {},),

                ],
              ),
              SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  const Text('Already have an account?'),
                  LineButton(text: 'Login Now', onpressed: () {
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
      ),
    );
  }
}
