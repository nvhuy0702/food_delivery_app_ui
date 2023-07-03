import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/edg_insets.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';

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
      height: 150,
      decoration: BoxDecoration(
        color: const Color(0xFF53E88B),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Stack(
        children: [
          Image.asset(
            AppAssets.images.promoAdvertising.path,
            height: 150,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitWidth,
          ),
          Image.asset(
            AppAssets.images.promoAdvertising1.path,
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}
