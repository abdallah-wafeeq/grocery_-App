import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:summer_course2/core/Extention/num.dart';
import 'package:summer_course2/core/Extention/string.dart';
import 'package:summer_course2/core/utils/colors.dart';
import 'package:summer_course2/widget/App_carousel.dart';
import 'package:summer_course2/widget/app/product_card.dart';
import 'package:summer_course2/widget/app_text.dart';
import 'package:summer_course2/widget/app_text_field.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "logo".assetPNG,
          width: 32,
          height: 32,
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 6,
                  left: 120,
                ),
                child: Image.asset(
                  "Exclude".assetPNG,
                  width: 18,
                  height: 18,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 6,
                  top: 6,
                ),
                child: AppText(
                  title: "Mansoura, Dakahlia",
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.darkGrey,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          AppTextField(
            leading: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
            ),
            hint: "search",
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                AppCarousel(
                  images: [
                    "https://cdn.britannica.com/39/187439-050-35BA4DCA/Broccoli-florets.jpg",
                    "https://www.healthyeating.org/images/default-source/home-0.0/nutrition-topics-2.0/general-nutrition-wellness/2-2-2-2foodgroups_vegetables_detailfeature.jpg?sfvrsn=226f1bc7_6",
                    "https://cdn.britannica.com/17/196817-159-9E487F15/vegetables.jpg"
                  ],
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        title: "Exclusive Offer",
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(
                        height: 34,
                      ),
                      AppText(
                        title: "See all",
                        fontSize: 16,
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: ProductCard.hieght,
                  width: ProductCard.width,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ProductCard();
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      width: 6.width,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: AppText(
                    title: "Best Selling",
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: ProductCard.hieght,
                  width: ProductCard.width,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ProductCard();
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      width: 6.width,
                    ),
                  ),
                ),
                SizedBox(height: 50.height,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
