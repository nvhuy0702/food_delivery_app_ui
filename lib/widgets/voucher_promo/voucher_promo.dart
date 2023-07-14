import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/edg_insets.dart';
import 'package:food_delivery_app_ui/core/util/space.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class VoucherPromo extends StatefulWidget {
  const VoucherPromo({super.key});

  @override
  State<VoucherPromo> createState() => _VoucherPromoState();
}

class _VoucherPromoState extends State<VoucherPromo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              AppAssets.images.homeBackground.path,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
              color: const Color(0xFF53E88B),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: AppEdgeInsets.allM,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildArrowBack,
                    AppSpacing.xXXL,
                    _buildVoucherPromo(
                      pathImage: AppAssets.images.voucherPromo1.path,
                      colorContent: Colors.white,
                    ),
                    AppSpacing.M,
                    _buildVoucherPromo(
                      pathImage: AppAssets.images.voucherPromo2.path,
                      colorContent: const Color(0xFF6B3A5B),
                      colorBtn: const Color(0xFF6B3A5B),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildVoucherPromo({
    String? pathImage,
    Color? colorContent,
    Color? colorBtn,
  }) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(blurRadius: 10, color: Colors.grey.withOpacity(0.6))
          ]),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Image.asset(
            pathImage ?? "",
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: AppEdgeInsets.allM,
            child: Column(
              children: [
                Text(
                  'Thỏa thuận đặc biệt\ncho tháng mới',
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: colorContent,
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
                  child: Text(
                    "Mua ngay",
                    style: TextStyle(
                      color: colorBtn ?? const Color(0xFF53E88B),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  InkWell get _buildArrowBack => InkWell(
        onTap: () => Navigator.pop(context),
        child: Container(
          padding: AppEdgeInsets.allM,
          decoration: BoxDecoration(
            color: const Color(0xFFF9A84D).withOpacity(0.2),
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.orange,
          ),
        ),
      );
}
