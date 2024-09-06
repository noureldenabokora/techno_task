import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techno_task/presentations/views/login_and_register/reset_password_view.dart';
import 'package:techno_task/presentations/views/login_and_register/widgets/custom_text_button.dart';
import 'package:techno_task/utils/app_navigator.dart';

import '../../../utils/gaps.dart';

class VerifyAccountView extends StatelessWidget {
  const VerifyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(
              top: 70.0.h,
            ),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 14.0.w),
              child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 30.0.h,
                      ),                child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            child: Image.asset('assets/images/mega.png',fit: BoxFit.fill,height: 80.h,width: 250.w,)
                        ),
                      ],
                    ),
                    ),
                    Gaps.vGap32,
                    Text(
                      'Verify Your Account',
                      style: TextStyle(
                          color: Color(0xff223263),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Gaps.vGap10,
                    Text(
                      'check your Email',
                      style: TextStyle(
                          color: Color(0xff9098B1),
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Gaps.vGap(145),
                    CustomTextButton(text: "Verify", function: (){AppNavigator(context, false, ResetPasswordView());}, color: Color(0xffed1c24), width: double.infinity,),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
