import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:summer_course2/core/Extention/num.dart';
import 'package:summer_course2/core/utils/colors.dart';
import 'package:summer_course2/widget/app_text.dart';

class ProductCard extends StatelessWidget {

  const ProductCard({super.key});

  static double get hieght => 248.height;
  static double get width => 174.width;
  static double get aspectRatio=> width / hieght;


  @override
  Widget build(BuildContext context) {
    return  Container(
        width: width,
        height: hieght,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.grey,
          ),
          borderRadius: BorderRadius.circular(16.radius),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 6,
            ),
            Expanded(
              child: Image.network(
                "https://purepng.com/public/uploads/large/purepng.com-bananafruitsyellowfruitbanana-981524754691bawpo.png",
                width: 160,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 20,
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: "organic bananas",
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AppText(
                      title: "1kg, pricing",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.darkGrey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Row(
                        children: [
                          AppText(
                            title: "\$4.99",
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(width: 46,),
                          Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 4,
                                horizontal: 4,
                              ),
                              child: Icon(
                                FontAwesomeIcons.plus,
                                color: AppColors.white,
                                size: 26,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.grey
                                ),
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.primary),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}
