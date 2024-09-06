import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techno_task/presentations/views/login_and_register/verify_account.dart';
import 'package:techno_task/presentations/views/login_and_register/widgets/custom_text_button.dart';
import 'package:techno_task/presentations/views/login_and_register/widgets/custom_text_form_field.dart';
import 'package:techno_task/utils/app_navigator.dart';

import '../../../utils/gaps.dart';

class ForgotPasswordView extends StatelessWidget {

  TextEditingController emailController = TextEditingController();

  FocusNode emailNode = FocusNode();


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
                    'Forget Password',
                    style: TextStyle(
                        color: Color(0xff223263),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Gaps.vGap10,
                  Text(
                    'Add your email to send code',
                    style: TextStyle(
                        color: Color(0xff9098B1),
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Gaps.vGap(50),
                  CustomTextFormField(label:"rex4dom@gmail.com" ,
                    controller: emailController,
                    isPassword: false,
                    keyboardType:TextInputType.emailAddress, node: emailNode,prefixIcon: Icons.email_outlined, ),
                  Gaps.vGap32,
                  CustomTextButton(text: "SEND", function: (){AppNavigator(context, false, VerifyAccountView());}, color: Color(0xffed1c24), width: double.infinity,),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
