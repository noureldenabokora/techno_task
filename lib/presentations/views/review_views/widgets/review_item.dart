import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/gaps.dart';

class ReviewItem extends StatelessWidget {
  final name;
  final review;
  final photo;
  double rating;

  ReviewItem(
      {required this.name,
      required this.review,
      required this.photo,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gaps.vGap10,
        Row(
          children: [
            CircleAvatar(
              radius: 30.r,
              child: CircleAvatar(
                radius: 30.r,
                backgroundImage: AssetImage(
                  photo,
                  // "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg",
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 6.0.w),
                  child: Text(
                    name,
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                RatingBar.builder(
                  unratedColor: Colors.grey[200],
                  initialRating: rating,
                  itemSize: 22,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ],
            ),
          ],
        ),
        Gaps.vGap12,
        Text(
          review,
          // "air max are always very comfortable fit, clean and\njust perfect in every way. just the box was too small\nand scrunched the sneakers up a little bit. not sureif\nthe box was always this small but the 90s are and\nwill always be one of my favourite. ",
          // "category\n  name",
          style: TextStyle(
              color: Colors.grey[600], fontSize: 12.sp, height: 1.8.h),
        ),
        Gaps.vGap12,
        Text(
          "December 10, 2018",
          style: TextStyle(
              color: Colors.grey[600], fontSize: 11.sp, height: 1.8.h),
        ),
      ],
    );
  }
}
