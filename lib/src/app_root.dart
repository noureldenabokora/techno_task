import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techno_task/layout/home_layout.dart';
import 'package:techno_task/presentations/views/account_views/account_view.dart';
import 'package:techno_task/presentations/views/account_views/delete_address_confirmation.dart';
import 'package:techno_task/presentations/views/account_views/profile_view.dart';
import 'package:techno_task/presentations/views/cart_views/ship_to_view.dart';
import 'package:techno_task/presentations/views/home_views/allCategories_view.dart';
import 'package:techno_task/presentations/views/home_views/favourits_view.dart';
import 'package:techno_task/presentations/views/home_views/home_view.dart';
import 'package:techno_task/presentations/views/home_views/product_details_view.dart';
import 'package:techno_task/presentations/views/home_views/products_of_category_view.dart';
import 'package:techno_task/presentations/views/login_and_register/login_view.dart';
import 'package:techno_task/presentations/views/review_views/add_review_view.dart';
import 'package:techno_task/presentations/views/review_views/reviews_view.dart';
import 'package:techno_task/presentations/views/splash_screen/splash_view.dart';

import '../presentations/views/cart_views/cart_view.dart';
import '../presentations/views/cart_views/success_view.dart';

class AppRoot extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:ScreenUtilInit(
            designSize: const Size(360, 690),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context , child) {
              return SplashView();
            }
        )
    );
  }
}