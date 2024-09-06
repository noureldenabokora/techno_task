import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techno_task/presentations/views/login_and_register/login_view.dart';
import 'package:techno_task/presentations/views/login_and_register/widgets/custom_text_button.dart';
import 'package:techno_task/presentations/views/login_and_register/widgets/custom_text_form_field.dart';
import 'package:techno_task/utils/app_navigator.dart';

import '../../../utils/gaps.dart';

class ResetPasswordView extends StatefulWidget {
  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  FocusNode passwordNode = FocusNode();

  FocusNode confirmPasswordNode = FocusNode();



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
                    'Reset Password',
                    style: TextStyle(
                        color: Color(0xff223263),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Gaps.vGap(40),
                  CustomTextFormField(label:"password" ,
                    controller: passwordController,
                    isPassword: true,

                    keyboardType:TextInputType.text, node: passwordNode, nextNode: confirmPasswordNode, prefixIcon: Icons.lock_outline_sharp,suffixIcon:Icons.visibility , ),
                  Gaps.vGap10,
                  CustomTextFormField(label:"confirm password" ,
                    controller: confirmPasswordController,
                    isPassword: true,
                    keyboardType:TextInputType.text, node: confirmPasswordNode, prefixIcon: Icons.lock_outline_sharp,suffixIcon:Icons.visibility , ),
                  Gaps.vGap32,
                  CustomTextButton(text: "confirm", function: (){AppNavigator(context, true, LoginView());}, color: Color(0xffed1c24), width: double.infinity,),
                  Gaps.vGap14,












                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
