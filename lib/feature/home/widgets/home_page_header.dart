import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/space.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';

import 'bottom_navigation_bar_custom.dart';
import 'home_header.dart';
import 'search_food.dart';

class HomePageHeader extends StatefulWidget {
  final Widget widget;
  final bool showBack;
  final bool hideFilter;
  final Widget? bottomNavigationBar;

  const HomePageHeader({
    super.key,
    required this.widget,
    this.showBack = false,
    this.hideFilter = false,
    this.bottomNavigationBar,
  });

  @override
  State<HomePageHeader> createState() => _HomePageHeaderState();
}

class _HomePageHeaderState extends State<HomePageHeader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppAssets.images.homeBackground.path,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitWidth,
            color: const Color(0xFF53E88B),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppSpacing.xXXL,
                AppSpacing.M,
                HomeHeader(
                  showBack: widget.showBack,
                ),
                AppSpacing.M,
                SearchFood(
                  hideFilter: widget.hideFilter,
                ),
                widget.widget
              ],
            ),
          )
        ],
      ),
    );
  }
}
