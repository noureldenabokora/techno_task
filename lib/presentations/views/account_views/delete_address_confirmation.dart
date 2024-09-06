import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techno_task/layout/home_layout.dart';
import 'package:techno_task/presentations/views/account_views/account_view.dart';
import 'package:techno_task/presentations/views/login_and_register/register_view.dart';
import 'package:techno_task/utils/app_navigator.dart';

import '../../../utils/gaps.dart';
import '../login_and_register/widgets/custom_text_button.dart';

class DeleteAddressConfirmation extends StatelessWidget {
  const DeleteAddressConfirmation({super.key});

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
                  child: Image.asset("assets/images/img.png",fit: BoxFit.fill,)),
              Text(
                "confirmation",
                style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold
                ),
              ),
              Gaps.vGap12,
              Text(
                "Are you sure wanna delete address",
                style: TextStyle(
                    color: Colors.grey[600], fontSize: 13.sp, height: 1.8.h,fontWeight: FontWeight.bold),
              ),
              Gaps.vGap(30),
              CustomTextButton(text: "Delete", function: (){AppNavigator(context, true, HomeLayout());}, color: Color(0xffED1C24), width: double.infinity),
              Gaps.vGap12,
              Container(
              width: double.infinity,
              height: 60.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(width: 1, color: Color(0xffebf0ff)),
                color: Colors.white,
                //
              ),
              child: TextButton(
                  onPressed: (){Navigator.pop(context);},
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold),
                  ))),



            ],
          ),
        ),
      ),
    );
  }
}
