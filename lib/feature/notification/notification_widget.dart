import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/edg_insets.dart';
import 'package:food_delivery_app_ui/core/util/space.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({super.key});

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
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
                    Text(
                      "Thông báo",
                      style: GoogleFonts.beVietnamPro(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    AppSpacing.M,
                    _buildContentNotification(
                      pathImage: AppAssets.images.check.path,
                      title: 'Đơn đặt hàng của bạn đã được tài xế thực hiện',
                      subTitle: 'Gần đây',
                    ),
                    AppSpacing.M,
                    _buildContentNotification(
                      pathImage: AppAssets.images.money.path,
                      title: 'Nạp vào tài khoản thành công 100 000 vnđ',
                      subTitle: '10:00',
                    ),
                    AppSpacing.M,
                    _buildContentNotification(
                      pathImage: AppAssets.images.cancel.path,
                      title: 'Đơn đặt hàng của bạn đã hủy',
                      subTitle: '00:00',
                    ),
                    AppSpacing.M,
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildContentNotification({
    String? pathImage,
    String? title,
    String? subTitle,
  }) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.blueAccent.withOpacity(0.2),
          )
        ],
      ),
      child: ListTile(
        contentPadding: AppEdgeInsets.allM,
        leading: Image.asset(pathImage ?? ""),
        title: Text(title ?? ""),
        subtitle: Text(subTitle ?? ""),
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
