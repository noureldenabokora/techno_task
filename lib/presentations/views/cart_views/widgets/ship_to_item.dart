import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/gaps.dart';
import '../../login_and_register/widgets/custom_text_button.dart';

class ShipToItem extends StatelessWidget {

  final name ;
  final containerBorderColor;

  ShipToItem({required this.name, required this.containerBorderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(width: 1, color: containerBorderColor)),
      child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gaps.vGap12,
              Text(
                "3711 spiring Hill Rd undefined Tallahassee,\nNevada 52874 United states",
                // "air max are always very comfortable fit, clean and\njust perfect in every way. just the box was too small\nand scrunched the sneakers up a little bit. not sureif\nthe box was always this small but the 90s are and\nwill always be one of my favourite. ",
                // "category\n  name",
                style: TextStyle(
                    color: Colors.grey[600], fontSize: 12.sp, height: 1.8.h),
              ),
              Gaps.vGap12,
              Text(
                "+99 1234567890",
                style: TextStyle(
                    color: Colors.grey[600], fontSize: 12.sp, height: 1.8.h),
              ),
              Gaps.vGap12,
              Row(
                children: [
                  CustomTextButton(text: "Edit", function: (){}, color: Color(0xff50555C), width: 80.w),
                  Gaps.hGap16,
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.delete_outline,color: Colors.grey[600],size: 30,)),
                ],
              ),




            ],
          )
      ),
    );
  }
}
