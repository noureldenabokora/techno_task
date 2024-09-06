import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/gaps.dart';

class CustomSocialButton extends StatelessWidget {
final icon;
final text;


CustomSocialButton({required this.icon,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 60.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            border: Border.all(color:Color(0xff9098B1),
            )
        ),
        child: TextButton(
            onPressed: () {},
            child: Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(icon,fit: BoxFit.fill,height: 24.h,width: 20.w,),
                Gaps.hGap(90),
                Text(
                  text,
                  style: TextStyle(
                      color: Color(0xff9098B1),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )));
  }
}
