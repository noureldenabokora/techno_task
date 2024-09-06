import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techno_task/presentations/views/home_views/widgets/category_item.dart';
import 'package:techno_task/presentations/views/home_views/widgets/product_item.dart';

import '../../../utils/gaps.dart';

class FavouritsView extends StatelessWidget {
  const FavouritsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 15.0.h,left: 5.w),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Favourite List',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0.w),
                  child: Divider(thickness: .8,color: Colors.grey,),
                ),
                Gaps.vGap10,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                  child: Container(
                    width: 350.w,
                    child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      // padding: EdgeInsets.all(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 25,
                          childAspectRatio: .72,
                          crossAxisCount: 2),
                      itemBuilder: (context, index) => ProductItem(
                          function: () {},
                          photo:
                          "assets/images/product.png",
                          productName: "FS-Nike Air Max 270\nReact",
                          currentPrice: "\$299,43",
                          oldPrice: "\$534,33",
                          discount: "24% Off",
                          containerWidth: 5.w, icon: Icons.delete_outline_outlined,),
                      itemCount: 2,
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      );
  }
}

