import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/gaps.dart';

class TextButtonOfAccountView extends StatelessWidget {
  final icon;
  final text;
  final iconColor;
  final function;


  TextButtonOfAccountView({required this.icon, required this.text, required this.iconColor, required this.function});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:function,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          child: Row(
            children: [
              Icon(
                icon,
                color: iconColor,
                size: 30,
              ),
              Gaps.hGap12,
              Text(
                text,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
