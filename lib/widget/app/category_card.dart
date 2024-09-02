import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:summer_course2/core/Extention/num.dart';
import 'package:summer_course2/core/route_utils.dart';
import 'package:summer_course2/views/category_details/view.dart';
import 'package:summer_course2/views/product_details/view.dart';
import 'package:summer_course2/widget/app_text.dart';

import '../../core/utils/colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  static double get hieght => 200.height;
  static double get width => 180.width;
  static double get aspectRatio => (width + 16) / (hieght + 16);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => RouteUtils.push(context,ProductDetails()),
      child: Container(
        height: hieght,
        width: width,
        padding: EdgeInsets.symmetric(
          horizontal: 32.width,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
            "https://static.vecteezy.com/system/resources/thumbnails/025/277/368/small/vegetables-basket-png.png",
            height: 100.height,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 18.height,),
            AppText(title: "vegetables",
            fontWeight: FontWeight.w600,
              fontSize: 16.font,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.primary.withOpacity(0.2),
            border: Border.all(color: AppColors.primary)),
      ),
    );
  }
}
