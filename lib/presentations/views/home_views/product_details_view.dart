import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techno_task/presentations/views/cart_views/cart_view.dart';
import 'package:techno_task/presentations/views/home_views/widgets/carousel_slider/carousel_image_container.dart';
import 'package:techno_task/presentations/views/home_views/widgets/carousel_slider/carousel_images_list.dart';
import 'package:techno_task/presentations/views/home_views/widgets/product_item.dart';
import 'package:techno_task/presentations/views/review_views/reviews_view.dart';
import 'package:techno_task/presentations/views/review_views/widgets/review_item.dart';
import 'package:techno_task/utils/app_navigator.dart';

import '../../../utils/gaps.dart';

class ProductDetailsView extends StatefulWidget {
  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  CarouselController buttonCarouselController = CarouselController();

  final int _numBanners = 5;

  int _currentBanner = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
      padding: EdgeInsets.only(top: 15.0.h, left: 5.w),
      child: Column(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {Navigator.pop(context);},
                    icon: Icon(
                      Icons.arrow_back_ios_sharp,
                      color: Colors.grey[600],
                      size: 15,
                    )),
                Gaps.hGap12,
                Text(
                  'Product Name ....',
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0.w),
              child: Divider(
                thickness: .8,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w, right: 8.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CarouselSlider.builder(
                      carouselController: buttonCarouselController,
                      options: CarouselOptions(
                        onPageChanged:
                            (int banner, CarouselPageChangedReason reason) {
                          setState(() {
                            _currentBanner = banner;
                          });
                        },
                        height: 230.h,
                        viewportFraction: 1,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        scrollDirection: Axis.horizontal,
                      ),
                      itemBuilder:
                          (BuildContext context, int index, int realIndex) {
                        return ImageContainer(
                            carouselImages: imagesProductDetails[index]);
                      },
                      itemCount: imagesProductDetails.length,
                    ),
                    Gaps.vGap14,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildPageIndicator(),
                    ),
                    Gaps.vGap12,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "product Name will display\nhere",
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Padding(
                              padding: EdgeInsets.only(bottom: 25.0.h),
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.grey[700],
                                size: 27,
                              ),
                            ))
                      ],
                    ),
                    RatingBar.builder(
                      unratedColor: Colors.grey[200],
                      initialRating: 4,
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
                    Gaps.vGap12,
                    Padding(
                      padding: EdgeInsets.only(right: 25.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$299,43",
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "\$534,33",
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        color: Colors.grey,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Gaps.hGap5,
                              Text(
                                "24% Off",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    color: Color(0xfffb7181),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Gaps.vGap12,
                    Text(
                      "Details",
                      style: TextStyle(
                        color: Color(0xfff57e2e),
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                    Gaps.vGap12,
                    Text(
                      "the Nike Air Max 270 React ENG combines a\nfull-length React foam midsole with a 270 Max Air\nunit for unrivaled comfort and a striking visual\nexperience",
                      // "category\n  name",
                      style: TextStyle(
                          height: 1.8.h,
                          color: Colors.grey[600],
                          fontSize: 12.sp),
                    ),
                    Gaps.vGap12,
                    Padding(
                      padding: EdgeInsets.only(right: 5.0.w),
                      child: GestureDetector(
                        onTap: (){AppNavigator(context, false,ReviewsView());},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Review Product",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "See More",
                              // "category\n  name",
                              style: TextStyle(
                                  color: Colors.grey[900], fontSize: 12.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gaps.vGap8,
                    Row(
                      children: [
                        RatingBar.builder(
                          unratedColor: Colors.grey[200],
                          initialRating: 4,
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
                        Row(
                          children: [
                            Text(
                              "4.5",
                              style: TextStyle(
                                  fontSize: 10.sp, color: Colors.grey[900]),
                            ),
                            Gaps.hGap4,
                            Text(
                              "(5 Review)",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ReviewItem(name: 'James Lawson',
                        review: "air max are always very comfortable fit, clean and\njust perfect in every way. just the box was too small\nand scrunched the sneakers up a little bit. not sureif\nthe box was always this small but the 90s are and\nwill always be one of my favourite. ",
                        photo: "assets/images/profile_picture.png",
                        rating: 4),
                    Gaps.vGap12,
                    Text(
                      "You Might Also Like",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Gaps.vGap12,
                  ]),
            ),
          ]),
          Padding(
            padding:  EdgeInsets.only(left: 8.0.w),
            child: Container(
              height: 240.h,
              width: double.infinity,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ProductItem(
                        function: () {},
                        photo:
                            "assets/images/productt.png",
                        productName: "FS-Nike Air Max 270\nReact",
                        currentPrice: "\$299,43",
                        containerWidth: 130.w,
                        oldPrice: "\$534,33",
                        discount: "24% Off",
                        icon: Icons.favorite_border,
                      ),
                  separatorBuilder: (context, index) => Gaps.hGap12,
                  itemCount: 4),
            ),
          ),
          Gaps.vGap32,
          Padding(
            padding:EdgeInsets.symmetric(horizontal: 8.0.w),
            child: Container(
                width: double.infinity,
                height: 60.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: Color(0xffba6400),
                ),
                child: TextButton(
                    onPressed: (){AppNavigator(context, false, CartView());},
                    child: Text(
                      "Add To Cart",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold),
                    ))),
          ),
          Gaps.vGap32,

        ],
      ),
    ))));
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numBanners; i++) {
      list.add(i == _currentBanner ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 3.0),
      height: isActive ? 8.h : 7.h,
      width: isActive ? 8.w : 7.w,
      decoration: BoxDecoration(
        color: isActive ? Colors.red : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(30.r)),
      ),
    );
  }
}
