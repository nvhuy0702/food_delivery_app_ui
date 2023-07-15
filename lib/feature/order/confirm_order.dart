import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/edg_insets.dart';
import 'package:food_delivery_app_ui/core/util/space.dart';
import 'package:food_delivery_app_ui/feature/order/edit_location.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';

import 'edit_payment.dart';

class ConfirmOrder extends StatefulWidget {
  const ConfirmOrder({super.key});

  @override
  State<ConfirmOrder> createState() => _ConfirmOrderState();
}

class _ConfirmOrderState extends State<ConfirmOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: AppEdgeInsets.allM,
        height: MediaQuery.of(context).size.height * 0.31 -
            kBottomNavigationBarHeight,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xFF53E88B),
        ),
        child: Stack(
          children: [
            Image.asset(
              AppAssets.images.backgroundPrice.path,
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppSpacing.M,
                _buildContentBot(left: "Tổng", right: "101 đồng"),
                AppSpacing.M,
                _buildContentBot(left: "Phí vận chuyển", right: "100 đồng"),
                AppSpacing.M,
                _buildContentBot(left: "Giảm giá", right: "100 đồng"),
                AppSpacing.M,
                _buildContentBot(
                  left: "Tổng",
                  right: "1 đồng",
                  isVip: true,
                ),
                AppSpacing.M,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.all(12),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("Đặt hàng"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppEdgeInsets.allM,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildArrowBack,
                AppSpacing.xXXL,
                _buildCardContent(
                  title: "Giao hàng đến",
                  pathImage: AppAssets.icons.icLocation.path,
                  content: "69, đường 69, Bình Thạnh, TP HCM",
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const EditLocation(),
                    ),
                  ),
                ),
                AppSpacing.M,
                _buildCardContent(
                  pathImage: AppAssets.icons.icCard.path,
                  title: "Phương thức thanh toán",
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const EditPayment(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCardContent({
    String? title,
    String? pathImage,
    String? content,
    Function()? onPressed,
  }) {
    return Container(
      padding: AppEdgeInsets.allM,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.grey.withOpacity(0.3),
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(title ?? ""),
              const Spacer(),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(50, 30),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  alignment: Alignment.centerLeft,
                ),
                onPressed: onPressed,
                child: const Text(
                  "Chỉnh sửa",
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
          Row(
            children: [
              Image.asset(pathImage ?? ""),
              AppSpacing.M,
              Text(content ?? ""),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildContentBot({
    String? left,
    String? right,
    bool isVip = false,
  }) {
    return Padding(
      padding: AppEdgeInsets.horizontal(),
      child: Row(
        children: [
          _buildText(left ?? "", isVip: isVip),
          const Spacer(),
          _buildText(right ?? "", isVip: isVip),
        ],
      ),
    );
  }

  Text _buildText(String content, {bool isVip = false}) {
    return Text(
      content,
      style: TextStyle(
        color: Colors.white,
        fontSize: isVip ? 22 : 17,
        fontWeight: FontWeight.w600,
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
