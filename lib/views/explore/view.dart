import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:summer_course2/core/Extention/num.dart';
import 'package:summer_course2/core/route_utils.dart';
import 'package:summer_course2/core/utils/colors.dart';
import 'package:summer_course2/views/product_details/view.dart';
import 'package:summer_course2/widget/app/category_card.dart';
import 'package:summer_course2/widget/app_app_bar.dart';

import '../../widget/app_text_field.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: "Find product",
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: InkWell(
          onTap: () => RouteUtils.push(context,ProductDetails()),
          child: Column(
              children: [
                AppTextField(
                  leading: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 20.height,
                  ),
                  hint: "search",
                ),
                SizedBox(
                  height: 20.height,
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: CategoryCard.aspectRatio,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return CategoryCard();
                    },
                  ),
                ),
              ],
            ),
        ),
        ),
    );
  }
}
