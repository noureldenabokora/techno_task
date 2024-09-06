import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techno_task/presentations/views/review_views/add_review_view.dart';
import 'package:techno_task/presentations/views/review_views/widgets/review_item.dart';
import 'package:techno_task/presentations/views/login_and_register/widgets/custom_text_button.dart';
import 'package:techno_task/utils/app_navigator.dart';

import '../../../utils/gaps.dart';

class ReviewsView extends StatelessWidget {
  const ReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 15.0.w),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: (){Navigator.pop(context);},
                        icon: Icon(Icons.arrow_back_ios_sharp,color: Colors.grey[600],size: 15,)),
                    Gaps.hGap12,
                    Text(
                      '5 Review',
                      style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                Divider(thickness: .8,color: Colors.grey,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0.h),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReviewItem(name: 'James Lawson',
                          review: "air max are always very comfortable fit, clean and\njust perfect in every way. just the box was too small\nand scrunched the sneakers up a little bit. not sureif\nthe box was always this small but the 90s are and\nwill always be one of my favourite. ",
                          photo: "assets/images/profile_picture.png",
                          rating: 4),
                      ReviewItem(name: 'Laura Octavian',
                          review: "this is rally amazing product, i like the design of\nproduct, i hope can buy it again",
                          photo: "assets/images/profile_picture1.png",
                          rating: 4),
                      ReviewItem(name: 'Jhonson Bridge',
                          review: "air max are always very comfortable fit, clean and\njust perfect in every way. just the box was too small\nand scrunched the sneakers up a little bit.",
                          photo: "assets/images/profile_picture2.png",
                          rating: 5),
                      ReviewItem(name: 'James Lawson',
                          review: "air max are always very comfortable fit, clean and\njust perfect in every way. just the box was too small",
                          photo: "assets/images/profile_picture3.png",
                          rating: 5),
                      Gaps.vGap50,
                      CustomTextButton(text: "Write Review", function: (){AppNavigator(context, false, AddReview());}, color: Color(0xffba6400), width: double.infinity,),
                      Gaps.vGap24
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
