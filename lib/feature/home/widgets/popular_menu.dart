import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/edg_insets.dart';
import 'package:food_delivery_app_ui/core/util/space.dart';
import 'package:google_fonts/google_fonts.dart';

import 'explore_menu.dart';

class PopularMenu extends StatefulWidget {
  const PopularMenu({super.key});

  @override
  State<PopularMenu> createState() => _PopularMenuState();
}

class _PopularMenuState extends State<PopularMenu> {
  final List<String> _urls = [
    "https://images.unsplash.com/flagged/photo-1557609786-fd36193db6e5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
    "https://plus.unsplash.com/premium_photo-1671653975940-4a2fdddef885?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80",
    "https://images.unsplash.com/photo-1575853121743-60c24f0a7502?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80",
  ];
  final List<String> _titles = [
    "Bánh nè",
    "Bánh nè",
    "Bánh nè"
  ];
  final List<String> _subTitles = [
    "Bánh nè subTitles",
    "Bánh nè subTitles",
    "Bánh nè subTitles",
  ];

  final List<String> _prices = [
    "50 000 vnđ",
    "60 000 vnđ",
    "70 000 vnđ",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppEdgeInsets.horizontal(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Thực đơn phổ biến",
                style: GoogleFonts.beVietnamPro(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ExploreMenu(),
                  ),
                ),
                child: const Text("Xem thêm"),
              )
            ],
          ),
          ListView.separated(
            padding: EdgeInsets.zero,
            separatorBuilder: (context, index) => AppSpacing.M,
            shrinkWrap: true,
            itemCount: _urls.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => Container(
              padding: AppEdgeInsets.allM,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(50), // Image radius
                          child: Image.network(
                            _urls[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      AppSpacing.M,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _titles[index],
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(_subTitles[index])
                        ],
                      )
                    ],
                  ),
                  Expanded(
                    child: Text(
                      _prices[index],
                      style: const TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFEAD1D),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
