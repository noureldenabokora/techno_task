import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techno_task/presentations/views/home_views/product_details_view.dart';
import 'package:techno_task/presentations/views/home_views/widgets/product_item.dart';
import 'package:techno_task/utils/app_navigator.dart';

import '../../../utils/gaps.dart';

class ProductsOfCategoryView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 15.0.h,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                      'Category Name',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Divider(
                    thickness: .6,
                    color: Colors.grey,
                  ),
                ),
                Gaps.vGap10,
                Container(
                  width: 500.w,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17.0.w),
                    child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      // padding: EdgeInsets.all(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 25,
                          childAspectRatio: .63,
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
                            oldPrice: "\$534,33",
                            discount: "24% Off",
                            containerWidth: 150.w, icon: Icons.favorite_border,),
                      ),
                      itemCount: 2,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.0.w),
                  child: Container(
                    width: 500.w,
                    child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      // padding: EdgeInsets.all(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 25,
                          childAspectRatio: .65,
                          crossAxisCount: 2),
                      itemBuilder: (context, index) => ProductItem(
                          function: () {},
                          photo:
                          "assets/images/product.png",
                          productName: "FS-Nike Air Max 270\nReact",
                          currentPrice: "\$299,43",
                          oldPrice: "",
                          discount: "",
                          containerWidth: 150.w, icon: Icons.favorite_border,),
                      itemCount: 2,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.0.w),
                  child: Container(
                    width: 500.w,
                    child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      // padding: EdgeInsets.all(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 25,
                          childAspectRatio: .63,
                          crossAxisCount: 2),
                      itemBuilder: (context, index) => ProductItem(
                          function: () {},
                          photo:
                          "assets/images/productt.png",
                          productName: "FS-Nike Air Max 270\nReact",
                          currentPrice: "\$299,43",
                          oldPrice: "\$534,33",
                          discount: "24% Off",
                          containerWidth: 150.w, icon: Icons.favorite_border,),
                      itemCount: 2,
                    ),
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
