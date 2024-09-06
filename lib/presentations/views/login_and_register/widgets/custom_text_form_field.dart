import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {


  final label;
  final controller;
  final keyboardType;
  final node;
  final nextNode;
  final prefixIcon;
  final suffixIcon;

  bool passwordVisible= false;



  bool isPassword = false;
  bool isActive = true;




  CustomTextFormField({required this.label,required this.controller, required this.isPassword,required this.keyboardType,required this.node, this.nextNode, this.prefixIcon, this.suffixIcon});


  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      keyboardType: keyboardType,
      obscureText: isPassword,
      textInputAction: TextInputAction.next,
      autofocus: true,
      focusNode:node,
      onFieldSubmitted: (_) {
        FocusScope.of(context)
            .requestFocus(nextNode);
      },
      controller:controller ,
      decoration: InputDecoration(
        hintText: label,
        hintStyle: TextStyle(
          color: Color(0xff9098B1)
        ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0.r),
            borderSide: BorderSide(
              color:  Color(0xff40bffff),
              width: 1.w
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0.r),
            borderSide: BorderSide(
              color:Color(0xff9098B1),
              width: .4.w,
            ),
          ),
        prefixIcon: Icon(prefixIcon,
        color: Color(0xff9098B1),),
        suffixIcon: Icon(suffixIcon,
          color: Color(0xff9098B1),),
      ),
    );
  }
}