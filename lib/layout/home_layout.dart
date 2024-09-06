import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techno_task/presentations/views/account_views/account_view.dart';
import 'package:techno_task/presentations/views/home_views/favourits_view.dart';
import 'package:techno_task/presentations/views/home_views/home_view.dart';
import 'package:techno_task/presentations/views/home_views/products_of_category_view.dart';

class HomeLayout extends StatefulWidget {

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex =0;
  List<Widget> views = [
    HomeView(),
    AccountView(),
    ProductsOfCategoryView(),
    FavouritsView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[currentIndex],
      bottomNavigationBar: SizedBox(
        height: 100.h,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
          child: BottomNavigationBar(
            selectedFontSize: 12.sp,
            unselectedFontSize: 12.sp,
            elevation: 1,
            iconSize: 30,
            selectedItemColor:  Color(0xff50555C),
            unselectedItemColor: Color(0xff9098B1),
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (index){
              setState(() {
                currentIndex=index;
              });
            },


            items:
            [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.person_3_outlined),label: "Account"),
              BottomNavigationBarItem(icon: Icon(Icons.local_offer_outlined),label: "Offer"),
              BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: "Favourits"),

            ],

          ),
        ),
      ),
    );
  }
}
