import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techno_task/presentations/views/login_and_register/login_view.dart';
import 'package:techno_task/presentations/views/login_and_register/widgets/custom_text_button.dart';
import 'package:techno_task/presentations/views/login_and_register/widgets/custom_text_form_field.dart';
import 'package:techno_task/utils/app_navigator.dart';

import '../../../utils/gaps.dart';

class RegisterView extends StatefulWidget {
  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  TextEditingController nameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  FocusNode nameNode = FocusNode();

  FocusNode phoneNode = FocusNode();

  FocusNode emailNode = FocusNode();

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
              padding: EdgeInsets.symmetric(horizontal: 14.0.w),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30.0.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            child: Image.asset(
                          'assets/images/mega.png',
                          fit: BoxFit.fill,
                          height: 80.h,
                          width: 250.w,
                        )),
                      ],
                    ),
                  ),
                  Gaps.vGap(80),
                  Text(
                    'Let\'s Get Started',
                    style: TextStyle(
                        color: Color(0xff223263),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Gaps.vGap10,
                  Text(
                    'Create an new account',
                    style: TextStyle(
                        color: Color(0xff9098B1),
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Gaps.vGap16,
                  CustomTextFormField(
                    label: "Full Name",
                    controller: nameController,
                    isPassword: false,
                    keyboardType: TextInputType.text,
                    node: nameNode,
                    nextNode: emailNode,
                    prefixIcon: Icons.perm_identity,
                  ),
                  Gaps.vGap10,
                  CustomTextFormField(
                    label: "Your Email",
                    controller: emailController,
                    isPassword: false,
                    keyboardType: TextInputType.emailAddress,
                    node: emailNode,
                    nextNode: phoneNode,
                    prefixIcon: Icons.email_outlined,
                  ),
                  Gaps.vGap10,
                  CustomTextFormField(
                    label: "Your phone",
                    controller: phoneController,
                    isPassword: false,
                    keyboardType: TextInputType.phone,
                    node: phoneNode,
                    nextNode: passwordNode,
                    prefixIcon: Icons.phone,
                  ),
                  Gaps.vGap10,
                  CustomTextFormField(
                    label: "Password",
                    controller: passwordController,
                    isPassword: true,
                    keyboardType: TextInputType.text,
                    node: passwordNode,
                    nextNode: confirmPasswordNode,
                    prefixIcon: Icons.lock_outline_sharp,
                  ),
                  Gaps.vGap10,
                  CustomTextFormField(
                    label: "confirm Password",
                    controller: confirmPasswordController,
                    isPassword: true,
                    keyboardType: TextInputType.text,
                    node: confirmPasswordNode,
                    prefixIcon: Icons.lock_outline_sharp,
                  ),
                  Gaps.vGap14,
                  CustomTextButton(text: "sign up", function: (){AppNavigator(context, true, LoginView());}, color: Color(0xffed1c24), width: double.infinity,),
                  Gaps.vGap14,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'have a account?',
                        style: TextStyle(
                            color: Color(0xff9098B1),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w900),
                      ),
                      Gaps.hGap5,
                      InkWell(
                        onTap: (){
                          AppNavigator(context, true, LoginView());
                        },
                        child: Text(
                          'sign in',
                          style: TextStyle(
                              color: Color(0xffed1c24),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w900),
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
