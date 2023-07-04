import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/edg_insets.dart';
import 'package:food_delivery_app_ui/core/util/space.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class PromoAdvertising extends StatefulWidget {
  const PromoAdvertising({super.key});

  @override
  State<PromoAdvertising> createState() => _PromoAdvertisingState();
}

class _PromoAdvertisingState extends State<PromoAdvertising> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppEdgeInsets.allM,
      decoration: BoxDecoration(
        color: const Color(0xFF53E88B),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Image.asset(
            AppAssets.images.promoAdvertising.path,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                AppAssets.images.promoAdvertising1.path,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Thỏa thuận đặc biệt\ncho tháng mới',
                    style: GoogleFonts.beVietnamPro(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  AppSpacing.M,
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: AppEdgeInsets.allM,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "Mua ngay",
                      style: TextStyle(
                        color: Color(0xFF53E88B),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
