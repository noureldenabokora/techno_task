import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'carousel_images_list.dart';

class ImageContainer extends StatelessWidget {

  final CarouselImages? carouselImages;


  ImageContainer({required this.carouselImages});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150.h,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
        ),
        child: Image(
          image: AssetImage(carouselImages!.image),
        )
    );
  }
}