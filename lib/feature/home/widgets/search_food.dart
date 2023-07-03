import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/edg_insets.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';
class SearchFood extends StatefulWidget {
  const SearchFood({super.key});

  @override
  State<SearchFood> createState() => _SearchFoodState();
}

class _SearchFoodState extends State<SearchFood> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppEdgeInsets.horizontal(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: AppEdgeInsets.symmetric(),
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              color: const Color(0xFFF9A84D).withOpacity(0.3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              cursorColor: Colors.white,
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: const InputDecoration.collapsed(
                hintStyle: TextStyle(
                  color: Color(0xFFDA6317),
                ),
                hintText: 'Bạn muốn gọi món gì?',
              ),
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: const Color(0xFFF9A84D).withOpacity(0.3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(
              AppAssets.icons.icFilter.path,
              color: const Color(0xFFDA6317),
            ),
          )
        ],
      ),
    );
  }
}
