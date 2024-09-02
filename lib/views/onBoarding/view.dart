import 'package:flutter/material.dart';
import 'package:summer_course2/core/Extention/num.dart';
import 'package:summer_course2/core/Extention/string.dart';
import 'package:summer_course2/core/route_utils.dart';
import 'package:summer_course2/core/utils/colors.dart';
import 'package:summer_course2/widget/app_Button.dart';
import 'package:summer_course2/widget/app_text.dart';

import '../nav_bar/view.dart';

class onBoarding extends StatelessWidget {
  const onBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'onBoarding'.assetPNG,
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'white logo'.assetPNG,
                height: 48.height,
                width: 48.width,
              ),
              SizedBox(
                height: 32,
              ),
              AppText(
                title: "Welcome\nto our store",
                color: AppColors.white,
                fontSize: 48.font,
                height: 64.height,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              AppText(
                title: "Ger your groceries in as fast as one hour",
                color: AppColors.white,
                fontSize: 16.font,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: AppButton(
                  title: "Get Started",
                  onTap: () => RouteUtils.pushAndRemoveAll(
                    context,
                    NavBarView(),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ],
      ),
    );
  }
}
