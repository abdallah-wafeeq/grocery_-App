import 'package:flutter/material.dart';
import 'package:summer_course2/core/Extention/num.dart';
import 'package:summer_course2/core/Extention/string.dart';
import 'package:summer_course2/core/utils/colors.dart';
import 'package:summer_course2/views/account/view.dart';
import 'package:summer_course2/views/explore/view.dart';
import 'package:summer_course2/views/favourit/view.dart';
import 'package:summer_course2/views/shop/view.dart';
import 'package:summer_course2/widget/app_text.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _tab(title: "shop",
                  image: "cart",
                  index: 0,
                ),
                _tab(title: "Explore",
                  image: "Explor",
                  index: 1,
                ),
                _tab(title: "favourite",
                  image: "favourit",
                    index: 2,
                ),
                _tab(title: "account",
                  image: "account",
                    index: 3,
                ),

                ],
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: AppColors.grey,
              offset: Offset(8, -12),
              blurRadius: 38,
            ),
          ],
        ),
      ),
      body: [
            ShopView(),
            ExploreView(),
            accountView(),
            FavouriteView(),
          ][currentIndex],
    );
  }

  Widget _tab({
  required String image,
    required String title,
    required int index,
  }){
    final isSelected = currentIndex == index;
    return Expanded(
      child: InkWell(
        onTap: () => setState(() => currentIndex = index ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              image.assetPNG,
              height: (isSelected ?26 : 22).height,
              width: (isSelected ? 26 : 22).height,
              color: isSelected ? AppColors.primary: AppColors.black ,
            ),
            SizedBox(
              height: 6.height,
            ),
            AppText(
              title: title,
              color: currentIndex == index? AppColors.primary: AppColors.black ,
              fontSize: (isSelected ? 16: 14).font,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
      ),
    );
  }
}
