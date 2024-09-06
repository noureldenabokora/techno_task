import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/gaps.dart';

class ContainerButtonOfProfile extends StatelessWidget {
  final prefixIcon;
  final text;
  final content;
  final suffixIcon;
  final function;

  ContainerButtonOfProfile(
      {required this.prefixIcon, required this.text, this.content, this.suffixIcon, this.function});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:function,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    prefixIcon,
                    color: Color(0xffBA6400),
                    size: 30,
                  ),
                  Gaps.hGap12,
                  Text(
                    text,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    content,
                    style: TextStyle(
                        fontSize: 13.sp,
                        color: Color(0xff9098B1),
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        suffixIcon,
                        color: Color(0xff9098B1),
                        size: 20,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
