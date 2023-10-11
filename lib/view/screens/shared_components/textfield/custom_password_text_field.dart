import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPasswordTextField extends StatefulWidget {
final String txt;
  const CustomPasswordTextField({super.key, required this.txt,});

  @override
  State<CustomPasswordTextField> createState() => _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool _obscureText = true; // Initially hide the password
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenUtil().screenWidth;
    double screenHeight = ScreenUtil().screenHeight;
    return  Padding(

      padding: const EdgeInsets.only(top: 10.0, left: 17),
      child: Container(
        height: screenHeight*0.07,
        width: screenWidth*0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0), // Adjust the radius for rounded corners
          color: Colors.grey[200], // Background color of the TextField
        ),
        child:  TextField(
          controller: _passwordController,
          decoration: InputDecoration(
            labelText: widget.txt,
            labelStyle: GoogleFonts.urbanist(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              color: Colors.grey
            ),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _obscureText = !_obscureText; // Toggle password visibility
                });
              },
              child: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
              ),
            ),
          ),
          obscureText: _obscureText,
        ),
      ),
    );
  }
}
