import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/gaps.dart';

class ProductItem extends StatelessWidget {
  final containerWidth;
  final function;
  final photo;
  final icon;
  final productName;
  final currentPrice;
  final oldPrice;
  final discount;

  ProductItem({
    required this.function,
    required this.photo,
    required this.icon,
    required this.productName,
    required this.currentPrice,
    this.oldPrice,
    this.discount,
    required this.containerWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Stack(children: [
              Center(
                child: Image.asset(
                  photo,
                  // "https://cdn.thewirecutter.com/wp-content/media/2023/12/choosingtherightps5-2048px-7290.jpg",
                  height: 150.h,
                  fit: BoxFit.fill,
                ),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: function,
                      icon: Padding(
                        padding: EdgeInsets.only(bottom: 8.0.h),
                        child: Icon(
                          icon,
                          color: Colors.white,
                          size: 27,
                        ),
                      )))
            ]),
          ),
          Text(
            productName,
            maxLines: 2,
            // "FS-Nike Air Max 270\nReact",
            style: TextStyle(
                fontSize: 12.sp, fontWeight: FontWeight.bold,
            ),
          ),
          Gaps.vGap4,
          Text(
            currentPrice,
            // "\$299,43",
            style: TextStyle(
                fontSize: 12.sp,
                color: Colors.grey[700],
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: oldPrice!,
                      style: TextStyle(
                        fontSize: 11.sp,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ),
              Gaps.hGap5,
              Text(
               discount!,
                style: TextStyle(
                    fontSize: 11.sp,
                    color: Color(0xffed1c24),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
        ],
      ),
    );
  }
}
