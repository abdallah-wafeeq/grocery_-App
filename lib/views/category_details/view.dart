import 'package:flutter/material.dart';
import 'package:summer_course2/core/Extention/num.dart';
import 'package:summer_course2/core/Extention/string.dart';
import 'package:summer_course2/core/route_utils.dart';
import 'package:summer_course2/views/filter/view.dart';
import 'package:summer_course2/widget/app/product_card.dart';
import 'package:summer_course2/widget/app_app_bar.dart';

class CategoryDetailsView extends StatelessWidget {
  const CategoryDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppAppBar(
          title: "vegetables",
          trailing: IconButton(
              icon: Image.asset(
            "filter".assetPNG,
                width: 20.width,
                height: 20.height,
          ), onPressed: () => RouteUtils.push(context,FilterView())),
        ),
        body: GridView.builder(
          itemCount: 7,
          padding: EdgeInsets.all(16),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: ProductCard.aspectRatio),
          itemBuilder: (context, index) {
            return ProductCard();
          },
        ));
  }
}
