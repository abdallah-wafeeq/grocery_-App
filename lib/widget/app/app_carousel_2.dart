import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:summer_course2/core/Extention/string.dart';

import '../../core/utils/colors.dart';

class AppCarousel2 extends StatelessWidget {
  const AppCarousel2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
            items: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40,top: 48,bottom: 2),
                  child: Image.asset("apple".assetPNG,
                  ),
                ),
                width:430 ,
                height: 400,
                decoration: BoxDecoration(
                  color: AppColors.lightGrey,
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(16)
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              viewportFraction: 1,
              height: 370,
            ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 380,top: 60),
          child: Image.asset("download".assetPNG,
            width: 20,
            height: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 26,top: 60),
          child: Image.asset("back arrow".assetPNG,
          width: 20,
            height: 20,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle
                ),
              ),
              SizedBox(width: 4,),
              Positioned(
                left: 0,
                right: 0,
                bottom: 16,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                          color: AppColors.grey,
                          shape: BoxShape.circle
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 4,),
              Positioned(
                left: 0,
                right: 0,
                bottom: 16,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                          color: AppColors.grey,
                          shape: BoxShape.circle
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );

  }
}
