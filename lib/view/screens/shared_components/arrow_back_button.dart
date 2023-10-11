import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArrowBackButton extends StatelessWidget {
  const ArrowBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only( left: 17.0),
      child: SizedBox(
        width: 41.w,
        height: 41.w,
        child: IconButton(
          style: IconButton.styleFrom(
              side: const BorderSide(
                color: Colors.grey,
                width: 1,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Center(
            child: Icon(
              Icons.arrow_back_ios,
              size: 19,
            ),
          ),
        ),
      ),
    );
  }
}
