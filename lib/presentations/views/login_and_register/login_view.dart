import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techno_task/layout/home_layout.dart';
import 'package:techno_task/presentations/views/home_views/home_view.dart';
import 'package:techno_task/presentations/views/login_and_register/register_view.dart';
import 'package:techno_task/presentations/views/login_and_register/widgets/custom_text_button.dart';
import 'package:techno_task/presentations/views/login_and_register/widgets/custom_text_form_field.dart';
import 'package:techno_task/presentations/views/login_and_register/widgets/custom_text_social_button.dart';
import 'package:techno_task/utils/app_navigator.dart';
import 'package:techno_task/utils/gaps.dart';

import 'forgot_password_view.dart';

class LoginView extends StatefulWidget {


  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  FocusNode emailNode = FocusNode();

  FocusNode passwordNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    'Welcome to MEGA store',
                    style: TextStyle(
                      color: Color(0xff223263),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Gaps.vGap10,
                  Text(
                    'sign in to continue',
                    style: TextStyle(
                        color: Color(0xff9098B1),
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Gaps.vGap16,
                  CustomTextFormField(label:"Your Email" ,
                      controller: emailController,
                      isPassword: false,
                      keyboardType:TextInputType.emailAddress, node: emailNode, nextNode: passwordNode, prefixIcon: Icons.email_outlined, ),
                  Gaps.vGap10,
                  CustomTextFormField(label:"password" ,
                    controller: passwordController,
                    isPassword: true,
                    keyboardType:TextInputType.text, node: passwordNode, prefixIcon: Icons.lock_outline_sharp, ),
                  Gaps.vGap14,
                  CustomTextButton(text: "sign in", function: (){AppNavigator(context, false, HomeLayout());}, color: Color(0xffed1c24), width: double.infinity,),
                  Gaps.vGap14,
                  Row(
                      children:[
                        Expanded(
                            child: Padding(
                              padding:  EdgeInsets.only(right: 25.0.w),
                              child: Divider(thickness: .6.w,),
                            )
                        ),
                        Text(
                            "OR",
                          style: TextStyle(
                            color: Color(0xff9098B1),
                            fontWeight: FontWeight.bold,
                            fontSize: 13.sp
                          ),
                        ),
                        Expanded(
                            child: Padding(
                              padding:  EdgeInsets.only(left: 25.0.w),
                              child: Divider(thickness: .6.w,),
                            )
                        ),
                      ]
                  ),
                  Gaps.vGap14,
                  CustomSocialButton(icon: "assets/images/Google.png", text: "Login with Google"),
                  Gaps.vGap8,
                  CustomSocialButton(icon: "assets/images/Facebook.png", text: "Login with facebook"),
                  Gaps.vGap12,
                  InkWell(
                    onTap: (){AppNavigator(context, false, ForgotPasswordView());},
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                          color: Color(0xffed1c24),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w900
                      ),
                    ),
                  ),
                  Gaps.vGap8,
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have a account?',
                        style: TextStyle(
                            color: Color(0xff9098B1),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w900
                        ),
                      ),
                      Gaps.hGap5,
                      InkWell(
                        onTap: (){AppNavigator(context, true, RegisterView());},
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Color(0xffed1c24),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w900
                          ),
                        ),
                      ),


                    ],
                  ),
                  Gaps.vGap32,












                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//9098B1