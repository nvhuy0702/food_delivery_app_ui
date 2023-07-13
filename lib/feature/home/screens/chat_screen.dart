import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/edg_insets.dart';
import 'package:food_delivery_app_ui/core/util/space.dart';
import 'package:food_delivery_app_ui/feature/home/widgets/content_chat.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: AppEdgeInsets.allM,
        child: Stack(
          children: [
            Image.asset(
              AppAssets.images.homeBackground.path,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
              color: const Color(0xFF53E88B),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSpacing.M,
                Text(
                  "Trò chuyện",
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                AppSpacing.M,
                _buildContentChat(
                  nickName: "Khosm",
                  timeChat: "07:02",
                  sub: "Đang code app này nè, hihi",
                  avatar: AppAssets.images.profile1.path,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ContentChat(),
                    ),
                  ),
                ),
                AppSpacing.M,
                _buildContentChat(
                  nickName: "Văn Huy",
                  timeChat: "07:02",
                  sub: "Tóc em rối rồi kìa",
                  avatar: AppAssets.images.profile3.path,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildContentChat({
    String? nickName,
    String? timeChat,
    String? sub,
    String? avatar,
    Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: AppEdgeInsets.allM,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.blueAccent.withOpacity(0.3),
                blurRadius: 10,
              )
            ]),
        child: ListTile(
          title: Text(nickName ?? ""),
          subtitle: Text(sub ?? ""),
          trailing: Text(timeChat ?? ""),
          leading: avatar?.isNotEmpty == true
              ? Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(avatar ?? ""),
                )
              : Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.teal),
                ),
        ),
      ),
    );
  }
}
