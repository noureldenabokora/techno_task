import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/gaps.dart';

class CategoryItem extends StatelessWidget {

  final photo;
  final name;
  final photoHeight;
  final photoWidth;
  final nameSize;

  CategoryItem({required this.photo,required this.name, required this.photoHeight, required this.photoWidth, required this.nameSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(100.0.r),
            child: Image.asset(
              photo,
              // "https://cdn.thewirecutter.com/wp-content/media/2023/12/choosingtherightps5-2048px-7290.jpg"

              fit: BoxFit.fill,
              height: photoHeight,
              width: photoWidth,
            )),
        Gaps.vGap5,
        Text(
          name,
          // "category\n  name",
          style: TextStyle(
              color: Colors.grey[700], fontSize: nameSize),
        )
      ],
    );
  }
}
