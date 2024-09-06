import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techno_task/presentations/views/cart_views/success_view.dart';
import 'package:techno_task/presentations/views/cart_views/widgets/ship_to_item.dart';
import 'package:techno_task/presentations/views/login_and_register/widgets/custom_text_button.dart';
import 'package:techno_task/utils/app_navigator.dart';

import '../../../utils/gaps.dart';

class ShipToView extends StatelessWidget {
  const ShipToView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 15.0.h,left: 5.w),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: (){Navigator.pop(context);},
                            icon: Icon(Icons.arrow_back_ios_sharp,color: Colors.grey[600],size: 15,)),
                        Gaps.hGap5,
                        Text(
                          'Ship To',
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold
                          ),
                        ),

                      ],
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.add,color: Color(0xff40BFFF),size: 30,)),

                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0.w),
                  child: Divider(thickness: .8,color: Colors.grey,),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.0.w),
                  child: Column(
                    children: [
                      Gaps.vGap10,
                      ShipToItem(name: "Priscekila", containerBorderColor: Color(0xff40BFFF),),
                      Gaps.vGap10,
                      ShipToItem(name: "Ahmed Khaidir", containerBorderColor: Color(0xffEBF0FF),),
                      Gaps.vGap(50),
                      CustomTextButton(text: "Next", function: (){AppNavigator(context, true, SuccessView());}, color: Color(0xffba6400), width: double.infinity,),
                      Gaps.vGap12,

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
