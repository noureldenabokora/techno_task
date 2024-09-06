import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techno_task/presentations/views/account_views/widgets/bottom_sheet_text_form.dart';
import 'package:techno_task/presentations/views/account_views/widgets/container_button_of_profile.dart';
import 'package:techno_task/presentations/views/login_and_register/widgets/custom_text_button.dart';
import 'package:techno_task/utils/app_navigator.dart';

import '../../../utils/gaps.dart';

class ProfileView extends StatefulWidget {
  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  TextEditingController oldPasswordController = TextEditingController();

  TextEditingController newPasswordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  FocusNode firstNameNode = FocusNode();

  FocusNode lastNameNode = FocusNode();

  FocusNode emailNode = FocusNode();
  FocusNode phoneNode = FocusNode();

  FocusNode oldPasswordNode = FocusNode();

  FocusNode newPasswordNode = FocusNode();

  FocusNode confirmPasswordNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 15.0.h, left: 5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {Navigator.pop(context);},
                        icon: Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Colors.grey[600],
                          size: 15,
                        )),
                    Gaps.hGap12,
                    Text(
                      'Profile',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Divider(
                  thickness: .8,
                  color: Colors.grey,
                ),
                Gaps.vGap10,
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(0.0)),
                          ),
                          builder: (context) => SingleChildScrollView(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom),
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15.0.w, vertical: 25.h),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      BottomSheetTextForm(
                                        title: "First Name",
                                        focusNode: firstNameNode,
                                        controller: firstNameController,
                                        hint: "Dominic", isPassword: false,
                                      ),
                                      Gaps.vGap32,
                                      BottomSheetTextForm(
                                        title: "Last Name",
                                        focusNode: lastNameNode,
                                        controller: lastNameController,
                                        hint: "Ove", isPassword: false,
                                      ),
                                      Gaps.vGap(45),
                                      CustomTextButton(
                                          text: "Save",
                                          function: () {
                                            Navigator.pop(context);
                                          },
                                          color: Color(0xffBA6400),
                                          width: double.infinity)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 40.r,
                              child: CircleAvatar(
                                radius: 40.r,
                                backgroundImage: AssetImage(
                                  "assets/images/profile_picture.png",
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dominic Ovo",
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Gaps.vGap8,
                                  Text(
                                    "@Dominic_Ovo",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Color(0xff9098B1),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gaps.vGap24,
                    Column(
                      children: [
                        ContainerButtonOfProfile(
                          prefixIcon: Icons.email_outlined,
                          text: "Email",
                          content: "rex4dom@gmail.com",
                          suffixIcon: Icons.arrow_forward_ios,
                          function: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(0.0)),
                              ),
                              builder: (context) => Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom),
                                  child: Container(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.0.w, vertical: 25.h),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Gaps.vGap16,
                                          BottomSheetTextForm(
                                            title: "change Email",
                                            focusNode: emailNode,
                                            controller: emailController,
                                            hint: "rex4dom@gmail.com", isPassword: false,
                                          ),
                                          Gaps.vGap5,
                                          Text(
                                            "We Will Send verification to your New Email",
                                            style: TextStyle(
                                              fontSize: 13.sp,fontWeight: FontWeight.bold,color: Colors.grey[600],
                                            ),
                                          ),
                                          Gaps.vGap(45),
                                          CustomTextButton(
                                              text: "Save",
                                              function: () {
                                                Navigator.pop(context);
                                              },
                                              color: Color(0xffBA6400),
                                              width: double.infinity)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                        ContainerButtonOfProfile(
                          prefixIcon: Icons.email_outlined,
                          text: "phone Number",
                          content: "(307) 555-0133",
                          suffixIcon: Icons.arrow_forward_ios,
                          function: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(0.0)),
                              ),
                              builder: (context) => Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom),
                                  child: Container(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.0.w, vertical: 25.h),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          BottomSheetTextForm(
                                            title: "phone Number",
                                            focusNode: phoneNode,
                                            controller: phoneController,
                                            hint: "(307) 555-0133", isPassword: false,
                                          ),
                                          Gaps.vGap(45),
                                          CustomTextButton(
                                              text: "Save",
                                              function: () {Navigator.pop(context);},
                                              color: Color(0xffBA6400),
                                              width: double.infinity)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                        ContainerButtonOfProfile(
                          prefixIcon: Icons.email_outlined,
                          text: "change password",
                          content: "***********",
                          suffixIcon: Icons.arrow_forward_ios,
                          function: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(0.0)),
                              ),
                              builder: (context) => SingleChildScrollView(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      bottom:
                                      MediaQuery.of(context).viewInsets.bottom),
                                  child: Container(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.0.w, vertical: 25.h),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          BottomSheetTextForm(
                                            title: "old Password",
                                            focusNode: oldPasswordNode,
                                            controller: oldPasswordController,
                                            hint: "************", isPassword: true,
                                          ),
                                          Gaps.vGap32,
                                          BottomSheetTextForm(
                                            title: "New Password",
                                            focusNode: newPasswordNode,
                                            controller: newPasswordController,
                                            hint: "************", isPassword: true,
                                          ),
                                          Gaps.vGap32,
                                          BottomSheetTextForm(
                                            title: "New Password Again",
                                            focusNode: confirmPasswordNode,
                                            controller: confirmPasswordController,
                                            hint: "************", isPassword: true,
                                          ),
                                          Gaps.vGap(45),
                                          CustomTextButton(
                                              text: "Save",
                                              function: () {Navigator.pop(context);},
                                              color: Color(0xffBA6400),
                                              width: double.infinity)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                        ContainerButtonOfProfile(
                          prefixIcon: Icons.language_outlined,
                          text: "change Lang",
                          content: "",
                          function: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
