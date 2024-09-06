import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techno_task/presentations/views/home_views/product_details_view.dart';
import 'package:techno_task/presentations/views/login_and_register/widgets/custom_text_button.dart';
import 'package:techno_task/presentations/views/login_and_register/widgets/custom_text_form_field.dart';
import 'package:techno_task/utils/app_navigator.dart';

import '../../../utils/gaps.dart';

class AddReview extends StatefulWidget {

  @override
  State<AddReview> createState() => _AddReviewState();
}

class _AddReviewState extends State<AddReview> {


  TextEditingController commentController =TextEditingController();

  FocusNode commentNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 15.0.h),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: (){Navigator.pop(context);},
                        icon: Icon(Icons.arrow_back_ios_sharp,color: Colors.grey[600],size: 15,)),
                    Gaps.hGap12,
                    Text(
                      'Write Review',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                Divider(thickness: .8,color: Colors.grey,),
                Gaps.vGap10,
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.0.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Please Write Overall level of satisfaction with\nyour shopping / Delivery service ",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Gaps.vGap10,
                      Row(
                        children: [
                          RatingBar.builder(
                            unratedColor: Colors.grey[200],
                            initialRating: 4,
                            itemSize: 40,
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
                          Gaps.hGap10,
                          Text(
                            "4/5",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Gaps.vGap10,
                      Text(
                        "Write Your Review",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Gaps.vGap14,
                      TextFormField(
                        maxLines: 6,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff40bfff)
                            )
                          ),
                          border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.circular(5.r),
                                ),
                            hintText: 'Write your review here',
                        ),
                        focusNode: commentNode,
                        style: TextStyle(fontSize: 13.sp,color: Colors.grey[600]),
                        controller: commentController,                        ),
                      Gaps.vGap(200),
                      CustomTextButton(text: "Send Review", function: (){AppNavigator(context, true, ProductDetailsView());}, color: Color(0xffba6400), width: double.infinity,)
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
