import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/space.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class CallChat extends StatefulWidget {
  const CallChat({super.key});

  @override
  State<CallChat> createState() => _CallChatState();
}

class _CallChatState extends State<CallChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Image.asset(
            AppAssets.images.loginBackground.path,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitWidth,
          ),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
              ),
              AppSpacing.M,
              Text(
                "Khosm",
                style: GoogleFonts.beVietnamPro(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              AppSpacing.M,
              Text(
                "Đang gọi...",
                style: GoogleFonts.beVietnamPro(),
              ),
              AppSpacing.M,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _actionCall(
                    onTap: () {},
                    color: Colors.green.withOpacity(0.3),
                    pathIcon: AppAssets.icons.icVolume.path,
                  ),
                  _actionCall(
                    onTap: () => Navigator.pop(context),
                    color: Colors.redAccent,
                    pathIcon: AppAssets.icons.icCancel.path,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _actionCall({
    Function()? onTap,
    Color? color,
    String? pathIcon,
}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: Image.asset(pathIcon ?? ""),
      ),
    );
  }
}
