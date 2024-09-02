import 'dart:async';

import 'package:flutter/material.dart';
import 'package:summer_course2/core/Extention/num.dart';
import 'package:summer_course2/core/Extention/string.dart';
import 'package:summer_course2/core/route_utils.dart';
import 'package:summer_course2/core/utils/colors.dart';
import 'package:summer_course2/main.dart';
import 'package:summer_course2/views/onBoarding/view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
  Timer(Duration(seconds: 3), () {
  RouteUtils.pushAndRemoveAll(context, onBoarding());
  },);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.height);
    print(size.width);
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Image.asset(
          // "assets/images/full logo.png",
          'full logo'.assetPNG,
          height: 68.height,
          width: 268.width,
        ),
      ),
    );
  }
}
