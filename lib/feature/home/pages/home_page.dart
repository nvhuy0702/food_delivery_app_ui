import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/edg_insets.dart';
import 'package:food_delivery_app_ui/core/util/space.dart';
import 'package:food_delivery_app_ui/feature/home/widgets/home_header.dart';
import 'package:food_delivery_app_ui/feature/home/widgets/promo_advertising.dart';
import 'package:food_delivery_app_ui/feature/home/widgets/search_food.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppSpacing.xXXL,
              const HomeHeader(),
              AppSpacing.M,
              const SearchFood(),
              const PromoAdvertising(),
              AppSpacing.xL,
              Padding(
                padding: AppEdgeInsets.horizontal(),
                child: Row(
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
                      onPressed: () {},
                      child: Text("Xem thêm"),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
