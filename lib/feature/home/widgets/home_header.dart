import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "Tìm món ăn\nyêu thích của bạn",
          style: GoogleFonts.beVietnamPro(
              fontSize: 31, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 10,
              ),
            ],
            image: DecorationImage(
              image: AssetImage(
                AppAssets.icons.icNotification.path,
              ),
            ),
          ),
        )
      ],
    );
  }
}
