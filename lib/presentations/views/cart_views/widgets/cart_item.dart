import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/gaps.dart';

class CartItem extends StatelessWidget {
  final photo;
  final name;
  final currentPrice;
  final icon;
  final iconColor;

  CartItem(
      {required this.photo,
      required this.currentPrice,
      this.iconColor,
      required this.name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              border: Border.all(width: 1, color: Color(0xffebf0ff))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                    width: 65.h,
                    child: Image.asset(
                      photo,
                      // "https://media.formula1.com/image/upload/f_auto/q_auto/v1679313708/fom-website/2018-redesign-assets/Tag%20collections/Other/NetZero_Car_i4_i3_0004.jpg.transform/9col/image.jpg",
                      fit: BoxFit.fill,
                      height: 65.h,
                    )),
                Gaps.hGap12,
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          // "Nike Air Zoom Pegasus\n36 Miami",
                          maxLines: 2,
                          // "FS-Nike Air Max 270\nReact",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Gaps.hGap(30),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.0.h),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                icon,
                                color:iconColor,
                                size: 30,
                              ),
                              Gaps.hGap(5),
                              Icon(
                                Icons.delete_outline,
                                color: Color(0xff9098b1),
                                size: 30,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Gaps.vGap12,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          currentPrice,
                          // "\$299,43",
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Color(0xff40bfff),
                              fontWeight: FontWeight.bold),
                        ),
                        Gaps.hGap(70),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              border:
                                  Border.all(width: 1, color: Color(0xffebf0ff))),
                          child: Row(
                            children: [
                              Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 5.0.w),
                                child: Icon(
                                  Icons.remove,
                                  size: 25,
                                  color: Color(0xff9098b1),
                                ),
                              ),
                              Container(
                                width: 40.w,
                                decoration: BoxDecoration(color: Color(0xffebf0ff)),
                                child: Center(
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                      height: 2.h,
                                        fontSize: 12.sp, color: Color(0xff9098b1),),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 5.0.w),
                                child: Icon(
                                  Icons.add,
                                  size: 25,
                                  color: Color(0xff9098b1),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Gaps.vGap14
      ],
    );
  }
}
