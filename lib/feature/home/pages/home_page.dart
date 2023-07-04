import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/space.dart';
import 'package:food_delivery_app_ui/feature/home/widgets/bottom_navigation_bar_custom.dart';
import 'package:food_delivery_app_ui/feature/home/widgets/home_header.dart';
import 'package:food_delivery_app_ui/feature/home/widgets/nearest_restaurant.dart';
import 'package:food_delivery_app_ui/feature/home/widgets/popular_menu.dart';
import 'package:food_delivery_app_ui/feature/home/widgets/promo_advertising.dart';
import 'package:food_delivery_app_ui/feature/home/widgets/search_food.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';

class HomePage extends StatefulWidget {
  final bool showBack;
  final bool hideFilter;

  const HomePage({
    super.key,
    this.showBack = false,
    this.hideFilter = false,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarCustom(),
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
                const PromoAdvertising(),
                AppSpacing.xL,
                const NearestRestaurant(),
                AppSpacing.M,
                const PopularMenu()
              ],
            ),
          )
        ],
      ),
    );
  }
}
