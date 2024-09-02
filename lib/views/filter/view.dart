import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:summer_course2/core/route_utils.dart';
import 'package:summer_course2/widget/app_app_bar.dart';

class FilterView extends StatelessWidget {
  const FilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: "Filter",
        leading: IconButton(
            onPressed: () => RouteUtils.pop(context),
            icon: Icon(FontAwesomeIcons.xmark,)),
      ),
    );
  }
}
