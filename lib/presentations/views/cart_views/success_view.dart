import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techno_task/layout/home_layout.dart';
import 'package:techno_task/presentations/views/cart_views/cart_view.dart';
import 'package:techno_task/presentations/views/home_views/home_view.dart';
import 'package:techno_task/utils/app_navigator.dart';
import 'package:techno_task/utils/gaps.dart';

import '../login_and_register/widgets/custom_text_button.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 160.h,
                  child: Image.asset("assets/images/img_2.png",fit: BoxFit.fill,)),
              Text(
                "Success",
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold
                ),
              ),
              Gaps.vGap12,
              Text(
                "thank you for shopping From",
                style: TextStyle(
                    color: Colors.grey[600], fontSize: 15.sp, height: 1.8.h,fontWeight: FontWeight.bold),
              ),
              Text(
                "MEGA Store",
                style: TextStyle(
                    color: Colors.grey[700], fontSize: 17.sp, height: 1.8.h,fontWeight: FontWeight.bold),
              ),
              Gaps.vGap(50),
              CustomTextButton(text: "Back To Home", function: (){AppNavigator(context, true, HomeLayout());}, color: Color(0xff50555C), width: double.infinity),
            ],
          ),
        ),
      ),
    );
  }
}
