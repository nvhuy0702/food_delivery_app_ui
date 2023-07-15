import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/feature/notification/notification_widget.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeHeader extends StatefulWidget {
  final bool showBack;

  const HomeHeader({super.key, this.showBack = false});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        widget.showBack
            ? IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios),
              )
            : const SizedBox.shrink(),
        Text(
          "Tìm món ăn\nyêu thích của bạn",
          style: GoogleFonts.beVietnamPro(
              fontSize: 31, fontWeight: FontWeight.bold),
        ),
        InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const NotificationWidget(),
            ),
          ),
          child: Container(
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
          ),
        )
      ],
    );
  }
}
