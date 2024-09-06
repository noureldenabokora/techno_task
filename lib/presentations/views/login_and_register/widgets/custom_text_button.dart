import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  final text;
  final function;
  final color;
  final width;


  CustomTextButton({required this.text,required this.function, required this.color, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: 60.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
            color: color,
            //
        ),
        child: TextButton(
            onPressed: function,
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold),
            )));
  }
}
