import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/gaps.dart';

class BottomSheetTextForm extends StatelessWidget {

  final title;
  final hint;
  final focusNode;
  final controller;
  bool isPassword;


  BottomSheetTextForm({
    required this.title,
    required this.focusNode,
    required this.controller,
    required this.hint,
    required this.isPassword

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold),
        ),
        Gaps.vGap12,
        TextFormField(
          obscureText: isPassword,
          maxLines: 1,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderRadius:                                  BorderRadius.only(
                    topLeft: Radius.circular(5.0.r),
                    bottomLeft: Radius.circular(5.r)
                ),
                borderSide: BorderSide(
                  color: Color(0xff40BFFF),
                  width: 1.w,
                )
            ),
            border: OutlineInputBorder(
              borderRadius:
              BorderRadius.only(
                  topLeft: Radius.circular(5.0.r),
                  bottomLeft: Radius.circular(5.r)
              ),
            ),
            hintText: hint,
          ),
          focusNode: focusNode,
          style: TextStyle(fontSize: 14.sp,color: Colors.grey[500]),
          controller: controller,                        ),

      ],
    );
  }
}
