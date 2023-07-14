import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_delivery_app_ui/core/util/edg_insets.dart';
import 'package:food_delivery_app_ui/core/util/size.dart';
import 'package:food_delivery_app_ui/core/util/space.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class RateWidget extends StatefulWidget {
  const RateWidget({super.key});


  @override
  State<RateWidget> createState() => _RateWidgetState();
}

class _RateWidgetState extends State<RateWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: AppEdgeInsets.horizontal(),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.all(12),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text("Bỏ qua"),
              ),
            ),
            AppSpacing.M,
            Expanded(
              child: FilledButton(
                onPressed: () {},
                child: const Text("Đánh giá"),
              ),
            )
          ],
        ),
      ),
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Image.asset(
            AppAssets.images.loginBackground.path,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitWidth,
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.greenAccent,
                      width: 5,
                    ),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(AppAssets.images.profile1.path),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                AppSpacing.M,
                Text(
                  "Cảm ơn!\nĐặt hàng thành công",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                AppSpacing.M,
                const Text(
                  "Vui lòng đánh giá phía dưới ",
                ),
                AppSpacing.xXXL,
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  glowColor: Colors.yellow,
                  itemPadding: AppEdgeInsets.horizontal(AppSize.xXS),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                  ),
                  onRatingUpdate: (rating) {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
