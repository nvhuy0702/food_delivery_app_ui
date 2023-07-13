import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/edg_insets.dart';
import 'package:food_delivery_app_ui/core/util/space.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bottom_chat.dart';
import 'call_chat.dart';

class ContentChat extends StatefulWidget {
  const ContentChat({super.key});

  @override
  State<ContentChat> createState() => _ContentChatState();
}

class _ContentChatState extends State<ContentChat> {
  final List<String> _contentChat = [];
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomChat(
        callback: (chat) {
          setState(() {
            _contentChat.add(chat);
            if (_contentChat.length > 10) {
              _scrollController.animateTo(
                MediaQuery.of(context).size.height * 0.25,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            }
          });
        },
      ),
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
              controller: _scrollController,
              child: Padding(
                padding: AppEdgeInsets.allM,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildArrowBack,
                    AppSpacing.M,
                    Text(
                      "Trò chuyện",
                      style: GoogleFonts.beVietnamPro(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    AppSpacing.M,
                    _buildInfo(),
                    AppSpacing.M,
                    ListView.separated(
                      controller: _scrollController,
                      separatorBuilder: (context, index) => AppSpacing.M,
                      shrinkWrap: true,
                      itemCount: _contentChat.length,
                      itemBuilder: (context, index) => Container(
                        padding: AppEdgeInsets.allM,
                        margin: index % 2 == 0
                            ? EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.25)
                            : EdgeInsets.only(
                                right:
                                    MediaQuery.of(context).size.width * 0.25),
                        decoration: BoxDecoration(
                            color: index % 2 == 0
                                ? Colors.green.withOpacity(0.3)
                                : Colors.grey,
                            borderRadius: BorderRadius.circular(13)),
                        child: Text(
                          _contentChat[index],
                          textAlign:
                              index % 2 == 0 ? TextAlign.end : TextAlign.start,
                        ),
                      ),
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

  Container _buildInfo() {
    return Container(
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
        title: const Text("nickName"),
        subtitle: const Text(
          "• online",
          style: TextStyle(color: Colors.green),
        ),
        trailing: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const CallChat(),
            ),
          ),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.greenAccent.withOpacity(0.3),
                shape: BoxShape.circle),
            child: Image.asset(AppAssets.icons.icCall.path),
          ),
        ),
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.teal,
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
