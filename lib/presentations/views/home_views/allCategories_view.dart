import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techno_task/presentations/views/home_views/products_of_category_view.dart';
import 'package:techno_task/presentations/views/home_views/widgets/category_item.dart';
import 'package:techno_task/utils/gaps.dart';

import '../../../utils/app_navigator.dart';

class AllCategoriesView extends StatelessWidget {
  const AllCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 15.0.h,left: 5.w),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: (){Navigator.pop(context);},
                        icon: Icon(Icons.arrow_back_ios_sharp,color: Colors.grey[600],size: 15,)),
                    Gaps.hGap12,
                    Text(
                      'All Categories',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Divider(thickness: .8,color: Colors.grey,),
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
                          mainAxisExtent: 180,
                          childAspectRatio: .72,
                          crossAxisCount: 3),
                      itemBuilder: (context, index) =>InkWell(
                        onTap: (){
                          AppNavigator(context, false, ProductsOfCategoryView());

                        },
                          child: CategoryItem(photo: "https://m.media-amazon.com/images/I/61PhU3PmFfL.jpg", name: "Category\n  Name", photoHeight: 100.h, photoWidth: 100.w, nameSize: 14.sp,)),
                      itemCount: 50,
                    ),
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
