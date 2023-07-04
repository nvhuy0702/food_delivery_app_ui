import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/edg_insets.dart';
import 'package:food_delivery_app_ui/core/util/size.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';

import 'filter_widget.dart';

class SearchFood extends StatefulWidget {
  final bool hideFilter;

  const SearchFood({
    super.key,
    this.hideFilter = false,
  });

  @override
  State<SearchFood> createState() => _SearchFoodState();
}

class _SearchFoodState extends State<SearchFood> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppEdgeInsets.horizontal(),
      child: Row(
        mainAxisAlignment: widget.hideFilter
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: AppEdgeInsets.horizontal(AppSize.xXS),
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              color: const Color(0xFFF9A84D).withOpacity(0.3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Image.asset(AppAssets.icons.icSearch.path),
                hintStyle: const TextStyle(
                  color: Color(0xFFDA6317),
                ),
                labelText: 'Bạn muốn gọi món gì?',
              ),
            ),
          ),
          widget.hideFilter
              ? const SizedBox.shrink()
              : InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const FilterWidget(),
                    ),
                  ),
                  child: Container(
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
                  ),
                )
        ],
      ),
    );
  }
}
