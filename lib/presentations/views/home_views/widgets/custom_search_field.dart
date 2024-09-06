import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomSearchField extends StatelessWidget {
  final TextInputType inputType;
  final bool obscureText;
  TextEditingController? controller;
  final bool isHiddenPassword;
  final String obscuringCharacter;
  final String hint;
  final InputDecoration? decoration;
  final Function(String?) onSave;
  final Function()? onTapShowHidePassword;
  final String? Function(String?)? validator;
  int maxLines;
  Widget? suffixIcon;
  Widget? prefixIcon;
  List<TextInputFormatter>? inputFormatters;

  CustomSearchField(
      {Key? key,
        required this.hint,
        required this.onSave,
        required this.inputType,
        this.validator,
        this.controller,
        this.obscureText = false,
        this.decoration,
        this.maxLines = 1,
        this.isHiddenPassword = false,
        this.obscuringCharacter = " ",
        this.inputFormatters,
        this.onTapShowHidePassword,
        this.suffixIcon,
        this.prefixIcon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 270.w,
      child: TextFormField(
        controller: controller,
        onSaved: onSave,
        validator: validator,
        cursorColor: Colors.grey,
        showCursor: true,
        textAlign: TextAlign.start,
        keyboardType: TextInputType.emailAddress,
        maxLines: maxLines,
        inputFormatters: inputFormatters ?? [],
        textAlignVertical: TextAlignVertical.center,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: obscureText && isHiddenPassword,
        obscuringCharacter: obscuringCharacter,
        style: TextStyle(
          fontSize: 11.sp
        ),
        decoration: decoration ??
            InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                fontSize: 11.sp,
                color: Colors.grey
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.r)),
                borderSide: BorderSide(color: Color(0xffE3E3E3), width: 1),
              ),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(color: Color(0xffE3E3E3), width: 1),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(color: Color(0xffE3E3E3), width: 1),
              ),
              errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(color: Colors.red, width: 1),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(color: Colors.red, width: 1),
              ),
              disabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(color: Color(0xffE3E3E3), width: 1),
              ),
              fillColor: Colors.grey[100],
              filled: true,
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              prefixIcon:  Icon(
                Icons.search,
                size: 20,
                color: Colors.grey[900],
              ),
              // suffixIcon: obscureText
              //     ? GestureDetector(
              //   onTap: onTapShowHidePassword,
              //   child: isHiddenPassword
              //       ? const Icon(
              //     Icons.visibility_off,
              //     size: 24,
              //     color: Color(ColorCode.eye),
              //   )
              //       : const Icon(
              //     Icons.visibility,
              //     size: 24,
              //     color: Color(ColorCode.eye),
              //   ),
              // )
              //     : null,
            ),
      ),
    );
  }
}
