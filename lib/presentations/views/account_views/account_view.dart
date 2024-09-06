import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techno_task/presentations/views/account_views/delete_account.dart';
import 'package:techno_task/presentations/views/account_views/delete_address_confirmation.dart';
import 'package:techno_task/presentations/views/account_views/profile_view.dart';
import 'package:techno_task/presentations/views/account_views/widgets/text_button_of_account.dart';
import 'package:techno_task/presentations/views/cart_views/cart_view.dart';
import 'package:techno_task/presentations/views/login_and_register/login_view.dart';
import 'package:techno_task/utils/app_navigator.dart';

import '../../../utils/gaps.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 15.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gaps.vGap12,
                  Row(
                    children: [
                      Gaps.hGap12,
                      Text(
                        'Account',
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Gaps.vGap12,
                  Divider(
                    thickness: .8,
                    color: Colors.grey,
                  ),
                  Column(
                    children: [
                      TextButtonOfAccountView(icon: Icons.person_3_outlined, text: "Profile", iconColor: Color(0xffBA6400), function: (){AppNavigator(context, false, ProfileView());},),
                      TextButtonOfAccountView(icon: Icons.shopping_bag_outlined, text: "My Orders", iconColor: Color(0xffBA6400), function: (){AppNavigator(context, false, CartView());},),
                      TextButtonOfAccountView(icon: Icons.location_on_outlined, text: "Address", iconColor: Color(0xffBA6400), function: (){AppNavigator(context, false, DeleteAddressConfirmation());},),
                      TextButtonOfAccountView(icon: Icons.logout_outlined, text: "Log out", iconColor: Color(0xffBA6400), function: (){AppNavigator(context, true, LoginView());},),
                      TextButtonOfAccountView(icon: Icons.delete, text: "Delete Account", iconColor: Color(0xffFB7181), function: (){AppNavigator(context, false, DeleteAccountConfirmation());},),
      
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}
