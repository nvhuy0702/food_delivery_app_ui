import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/edg_insets.dart';
import 'package:food_delivery_app_ui/core/util/size.dart';
import 'package:food_delivery_app_ui/core/util/space.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';

import 'home_page_header.dart';

class ExploreRestaurant extends StatefulWidget {
  const ExploreRestaurant({super.key});

  @override
  State<ExploreRestaurant> createState() => _ExploreRestaurantState();
}

class _ExploreRestaurantState extends State<ExploreRestaurant> {
  final List<String> _pathLogoRestaurant = [
    AppAssets.images.logoRestaurant1.path,
    AppAssets.images.logoRestaurant2.path,
    AppAssets.images.logoRestaurant3.path,
    AppAssets.images.logoRestaurant4.path
  ];

  final List<String> _nameRestaurant = [
    "Vegan Resto",
    "Healthy Food",
    "Good Food",
    "Smart Resto"
  ];

  @override
  Widget build(BuildContext context) {
    return HomePageHeader(
      showBack: true,
      widget: SingleChildScrollView(
        child: Column(
          children: [
            AppSpacing.M,
            GridView.count(
              physics: const BouncingScrollPhysics(),
              crossAxisCount: 2,
              childAspectRatio: 1.0,
              padding: AppEdgeInsets.allM,
              mainAxisSpacing: AppSize.M,
              crossAxisSpacing: AppSize.M,
              shrinkWrap: true,
              children: List<Widget>.generate(4, (index) {
                return Container(
                  padding: AppEdgeInsets.allM,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          _pathLogoRestaurant[index],
                        ),
                      ),
                      Text(
                        _nameRestaurant[index],
                      ),
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
