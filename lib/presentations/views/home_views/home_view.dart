import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techno_task/presentations/views/cart_views/cart_view.dart';
import 'package:techno_task/presentations/views/home_views/allCategories_view.dart';
import 'package:techno_task/presentations/views/home_views/product_details_view.dart';
import 'package:techno_task/presentations/views/home_views/widgets/carousel_slider/carousel_image_container.dart';
import 'package:techno_task/presentations/views/home_views/widgets/carousel_slider/carousel_images_list.dart';
import 'package:techno_task/presentations/views/home_views/widgets/category_item.dart';
import 'package:techno_task/presentations/views/home_views/widgets/custom_search_field.dart';
import 'package:techno_task/presentations/views/home_views/widgets/product_item.dart';
import 'package:techno_task/utils/app_navigator.dart';
import 'package:techno_task/utils/gaps.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  CarouselController buttonCarouselController = CarouselController();
  final int _numBanners = 5;
  int _currentBanner = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.only(top: 15.0.h, left: 10.w, right: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: CustomSearchField(
                            hint: "Search product",
                            onSave: (f) {},
                            inputType: TextInputType.text),
                      ),
                      Stack(alignment: AlignmentDirectional.topEnd, children: [
                        IconButton(
                            onPressed: () {AppNavigator(context, false, CartView());},
                            icon: Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.grey[400],
                              size: 30,
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 14.h,
                            width: 14.w,
                            decoration: BoxDecoration(
                                color: Color(0xffed1c24),
                                borderRadius: BorderRadius.circular(30.r)),
                            child: Center(
                              child: Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 8.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        )
                      ])
                    ],
                  ),
                  Gaps.vGap14,
                  CarouselSlider.builder(
                    carouselController: buttonCarouselController,
                    options: CarouselOptions(
                      onPageChanged:
                          (int banner, CarouselPageChangedReason reason) {
                        setState(() {
                          _currentBanner = banner;
                        });
                      },
                      height: 150.h,
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
                      return ImageContainer(carouselImages: imagesHome[index]);
                    },
                    itemCount: imagesHome.length,
                  ),
                  Gaps.vGap4,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                  Gaps.vGap8,
                  Container(
                    height: 140.h,
                    width: double.infinity,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => InkWell(
                          onTap: (){AppNavigator(context, false, AllCategoriesView());},
                          child: CategoryItem(
                              photo:
                                  "assets/images/cart_image.png",
                              name: "category\n  name", photoHeight: 80.h, photoWidth: 80.w, nameSize: 11.sp,),
                        ),
                        separatorBuilder: (context, index) => Gaps.hGap12,
                        itemCount: 4),
                  ),
                  Container(
                      width: double.infinity,
                      child: Image.asset(
                        "assets/images/discount.png",
                        fit: BoxFit.fill,
                      )),
                  Gaps.vGap8,
                  Text(
                    "Flash Sale",
                    style: TextStyle(
                      color: Color(0xffed1c24),
                      shadows: [
                        Shadow(
                          offset: Offset(1.0, 5.0),
                          blurRadius: 5.0,
                          color: Color.fromARGB(45, 0, 0, 255),
                        ),
                      ],
                      fontWeight: FontWeight.bold,
                      fontSize: 13.sp,
                    ),
                  ),
                  Gaps.vGap8,
                  Container(
                    height: 240.h,
                    width: double.infinity,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => InkWell(
                          onTap: (){
                            AppNavigator(context, false, ProductDetailsView());
                          },
                          child: ProductItem(
                                function: () {},
                                photo:
                                    "assets/images/product.png",
                                productName: "FS-Nike Air Max 270\nReact",
                                currentPrice: "\$299,43",
                                containerWidth: 130.w,
                                oldPrice: "\$534,33",
                                discount: "24% Off", icon: Icons.favorite_border,
                              ),
                        ),
                        separatorBuilder: (context, index) => Gaps.hGap12,
                        itemCount: 4),
                  ),
                  Text(
                    "You May Like",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                  ),
                  Container(
                    width: 500.w,
                    child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      // padding: EdgeInsets.all(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 18,
                          childAspectRatio: .70,
                          crossAxisCount: 2),
                      itemBuilder: (context, index) => InkWell(
                        onTap: (){
                          AppNavigator(context, false, ProductDetailsView());
                        },
                        child: ProductItem(
                          function: () {},
                          photo:
                              "assets/images/productt.png",
                          productName: "FS-Nike Air Max 270\nReact",
                          currentPrice: "\$299,43",
                          containerWidth: 150.w,
                          oldPrice: "\$534,33",
                          discount: "24% Off", icon: Icons.favorite_border,
                        ),
                      ),
                      itemCount: 7,
                    ),
                  )
                ],
              )),
        )));
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
        color: isActive ? Colors.grey[900] : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(30.r)),
      ),
    );
  }
}
