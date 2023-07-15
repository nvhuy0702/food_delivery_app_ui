import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/edg_insets.dart';
import 'package:food_delivery_app_ui/core/util/space.dart';
import 'package:google_fonts/google_fonts.dart';

class EditPayment extends StatefulWidget {
  const EditPayment({super.key});

  @override
  State<EditPayment> createState() => _EditPaymentState();
}

class _EditPaymentState extends State<EditPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppEdgeInsets.allM,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildArrowBack,
                AppSpacing.xXXL,
                Text(
                  "Thanh toán",
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
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
