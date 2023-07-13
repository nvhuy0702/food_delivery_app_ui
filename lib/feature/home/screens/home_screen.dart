import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/space.dart';
import 'package:food_delivery_app_ui/feature/home/widgets/home_header.dart';
import 'package:food_delivery_app_ui/feature/home/widgets/nearest_restaurant.dart';
import 'package:food_delivery_app_ui/feature/home/widgets/popular_menu.dart';
import 'package:food_delivery_app_ui/feature/home/widgets/promo_advertising.dart';
import 'package:food_delivery_app_ui/feature/home/widgets/search_food.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
              const HomeHeader(),
              AppSpacing.M,
              const SearchFood(),
              const PromoAdvertising(),
              AppSpacing.xL,
              const NearestRestaurant(),
              AppSpacing.M,
              const PopularMenu()
            ],
          ),
        )
      ],
    );
  }
}
