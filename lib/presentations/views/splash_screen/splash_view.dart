import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techno_task/utils/app_navigator.dart';

import '../login_and_register/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 5),(){
      AppNavigator(context, true, LoginView());
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Padding(
            padding:  EdgeInsets.only(left: 30.0.w),
            child: Image.asset("assets/images/mega.png"),
          )],

        ),
      ),
    );
  }
}
