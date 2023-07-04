import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/edg_insets.dart';
import 'package:food_delivery_app_ui/core/util/space.dart';
import 'package:food_delivery_app_ui/feature/home/widgets/home_page_header.dart';

class FilterWidget extends StatefulWidget {
  const FilterWidget({super.key});

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  int _index = -1;

  @override
  Widget build(BuildContext context) {
    return HomePageHeader(
      hideFilter: true,
      showBack: true,
      bottomNavigationBar: Padding(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 32),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            fixedSize: Size(MediaQuery.of(context).size.width * 1, 50),
            padding: AppEdgeInsets.allM,
            backgroundColor: const Color(0xFF53E88B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: const Text(
            "Tìm",
          ),
        ),
      ),
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _test(
            title: "Loại",
            contents: ["Nhà hàng", "Menu"],
            itemCount: 2,
          ),
          _test(
            title: "Vị trí",
            contents: ["1 km", "> 10 km", "< 10 km"],
            itemCount: 3,
          ),
          _test(
            title: "Đồ ăn",
            contents: [
              "Bánh",
              "Canh",
              "Món chính",
              "Món khai vị",
              "Món tráng miệng"
            ],
            itemCount: 5,
          ),
        ],
      ),
    );
  }

  Widget _test({
    String? title,
    List<String>? contents,
    int? itemCount,
  }) {
    return Padding(
      padding: AppEdgeInsets.allM,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? "",
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          AppSpacing.M,
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
            child: ListView.separated(
              padding: EdgeInsets.zero,
              separatorBuilder: (context, index) => AppSpacing.M,
              shrinkWrap: true,
              itemCount: itemCount ?? 0,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () {
                  setState(() {
                    _index = index;
                  });
                },
                child: Container(
                  padding: AppEdgeInsets.allM,
                  decoration: BoxDecoration(
                    color: _index == index
                        ? const Color(0xFFDA6317)
                        : const Color(0xFFF9A84D).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    contents?[index] ?? "",
                    style: TextStyle(
                        color: _index == index ? Colors.white : Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
