import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/edg_insets.dart';
import 'package:food_delivery_app_ui/core/util/space.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'explore_restaurant.dart';

class NearestRestaurant extends StatefulWidget {
  const NearestRestaurant({super.key});

  @override
  State<NearestRestaurant> createState() => _NearestRestaurantState();
}

class _NearestRestaurantState extends State<NearestRestaurant> {
  final List<String> _pathLogoRestaurant = [
    AppAssets.images.logoRestaurant1.path,
    AppAssets.images.logoRestaurant2.path,
    AppAssets.images.logoRestaurant1.path,
    AppAssets.images.logoRestaurant2.path
  ];

  final List<String> _nameRestaurant = [
    "Vegan Resto",
    "Healthy Food",
    "Vegan Resto",
    "Healthy Food"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppEdgeInsets.horizontal(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Nhà hàng gần nhất",
                style: GoogleFonts.beVietnamPro(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ExploreRestaurant(),
                  ),
                ),
                child: const Text("Xem thêm"),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: ListView.separated(
              padding: EdgeInsets.zero,
              separatorBuilder: (context, index) => AppSpacing.M,
              shrinkWrap: true,
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                padding: AppEdgeInsets.allM,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: Colors.grey)),
                child: Column(
                  children: [
                    Expanded(child: Image.asset(_pathLogoRestaurant[index])),
                    Text(_nameRestaurant[index])
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
