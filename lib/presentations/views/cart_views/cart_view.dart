import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techno_task/presentations/views/cart_views/ship_to_view.dart';
import 'package:techno_task/presentations/views/cart_views/widgets/cart_item.dart';
import 'package:techno_task/presentations/views/cart_views/widgets/my_seperator.dart';
import 'package:techno_task/presentations/views/login_and_register/widgets/custom_text_button.dart';
import 'package:techno_task/utils/app_navigator.dart';

import '../../../utils/gaps.dart';

class CartView extends StatefulWidget {

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  TextEditingController codeController = TextEditingController();

  FocusNode codeNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 15.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gaps.vGap12,
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.0.w),
                  child: Row(
                    children: [
                      Gaps.hGap12,
                      Text(
                        'Your Cart',
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Gaps.vGap12,
                Divider(
                  thickness: .8,
                  color: Colors.grey,
                ),
                Gaps.vGap12,
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CartItem(
                          photo: "assets/images/cart_image.png",
                          currentPrice: "\$299,43",
                          iconColor: Color(0xfffb7181),
                          name: "Nike Air Zoom Pegasus\n36 Miami", icon: Icons.favorite,),
                      CartItem(
                          photo: "assets/images/cart_image.png",
                          currentPrice: "\$299,43",
                          iconColor: Color(0xff9098b1),
                          name: "Nike Air Zoom Pegasus\n36 Miami", icon: Icons.favorite_border,),
                      Row(
                        children: [
                          Container(
                            width:230.w,
                            child: TextFormField(
                              maxLines: 1,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:                                  BorderRadius.only(
                                      topLeft: Radius.circular(5.0.r),
                                      bottomLeft: Radius.circular(5.r)
                                  ),
                                    borderSide: BorderSide(
                                        color: Color(0xffEBF0FF),
                                      width: 1,
                                    )
                                ),
                                border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.only(
                                    topLeft: Radius.circular(5.0.r),
                                    bottomLeft: Radius.circular(5.r)
                                  ),
                                ),
                                hintText: 'Enter Cupon Code',
                              ),
                              focusNode: codeNode,
                              style: TextStyle(fontSize: 12.sp,color: Colors.grey[500]),
                              controller: codeController,                        ),
                          ),
                          Container(
                              width: 100.w,
                              height: 60.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5.r),
                                  bottomRight: Radius.circular(5.r),


                                ),
                                color: Color(0xffba6400),
                                //
                              ),
                              child: TextButton(
                                  onPressed: (){},
                                  child: Text(
                                    "Apply",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold),
                                  ))),

                        ],
                      ),
                      Gaps.vGap12,
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            border: Border.all(width: 1, color: Color(0xffebf0ff))),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Items(3)",
                                    style: TextStyle(
                                        color: Colors.grey[600], fontSize: 12.sp, height: 1.8.h),
                                  ),
                                  Text(
                                    "\$598,86",
                                    style: TextStyle(
                                        color: Colors.grey[900], fontSize: 13.sp, height: 1.8.h),
                                  ),


                                ],
                              ),
                              Gaps.vGap12,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "shipping",
                                    style: TextStyle(
                                        color: Colors.grey[600], fontSize: 12.sp, height: 1.8.h),
                                  ),
                                  Text(
                                    "\$40,00",
                                    style: TextStyle(
                                        color: Colors.grey[900], fontSize: 13.sp, height: 1.8.h),
                                  ),


                                ],
                              ),
                              Gaps.vGap12,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "import charges",
                                    style: TextStyle(
                                        color: Colors.grey[600], fontSize: 12.sp, height: 1.8.h),
                                  ),
                                  Text(
                                    "\$128,00",
                                    style: TextStyle(
                                        color: Colors.grey[900], fontSize: 13.sp, height: 1.8.h),
                                  ),


                                ],
                              ),
                              Gaps.vGap12,
                              MySeparator(color: Color(0xffebf0ff)),
                              Gaps.vGap12,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Total Price",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "\$128,00",
                                    style: TextStyle(
                                        color: Color(0xff40bfff), fontSize: 13.sp, height: 1.8.h),
                                  ),


                                ],
                              ),





                            ],
                          )
                        ),
                      ),
                      Gaps.vGap12,
                      CustomTextButton(text: "Check Out", function: (){AppNavigator(context, false, ShipToView());}, color: Color(0xffba6400), width: double.infinity,),
                      Gaps.vGap12,
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
