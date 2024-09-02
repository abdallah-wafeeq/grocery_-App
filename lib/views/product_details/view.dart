import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:summer_course2/core/Extention/string.dart';
import 'package:summer_course2/core/utils/colors.dart';
import 'package:summer_course2/widget/app/app_carousel_2.dart';
import 'package:summer_course2/widget/app_Button.dart';
import 'package:summer_course2/widget/app_text.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          AppCarousel2(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 26,top: 30),
                child: AppText(title: "Naturel Red Apple",
                fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 300,top: 10),
            child: AppText(title: "1kg, Price",
            fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.grey,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28,top: 36),
                child: Container(
                  width: 17,
                  child: Icon(FontAwesomeIcons.minus,color: AppColors.grey,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 36),
                child: Container(
                  width: 46,
                  height: 46,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18,top: 8),
                    child: AppText(title: "1",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: AppColors.lightGrey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24,top: 34),
                child: Container(
                  width: 17,
                  child: Icon(FontAwesomeIcons.plus,color: AppColors.primary,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 180,top: 34),
                child: AppText(title: "\$4.99",
                  color: AppColors.black,
                  fontWeight:FontWeight.w600,
                  fontSize: 24,
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Divider(color: AppColors.lightGrey,),
          SizedBox(height: 6,),
          Padding(
            padding: const EdgeInsets.only(left: 360),
            child: Image.asset("bottom1".assetPNG,
              width: 20,
              height: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 260,top: 0),
            child: AppText(title: "Product Detail",
            fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 6),
            child: AppText(title: "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
            fontSize: 14,
              color: AppColors.grey,
            ),
          ),
          SizedBox(height: 4,),
          Divider(color: AppColors.lightGrey,),
          SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.only(right: 300,),
            child: AppText(title: "Nutritions",
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 360,bottom: 2),
            child: Image.asset("right sho3a3".assetPNG,
              width: 16,
              height: 16,
            ),
          ),
          SizedBox(height: 4,),
          Divider(color: AppColors.lightGrey,),
          Padding(
            padding: const EdgeInsets.only(right: 320),
            child: AppText(title: "Review",
            fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 360,bottom: 2),
            child: Image.asset("right sho3a3".assetPNG,
              width: 16,
              height: 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 8),
            child: AppButton(title: "Add To Basket",
            ),
          ),
        ],
      ),
    );
  }
}
