import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_delivery_app_ui/core/util/edg_insets.dart';
import 'package:food_delivery_app_ui/core/util/space.dart';
import 'package:food_delivery_app_ui/feature/order/confirm_order.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetail extends StatefulWidget {
  const OrderDetail({super.key});

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  List<String> images = [
    "https://images.unsplash.com/photo-1623855244183-52fd8d3ce2f7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80",
    "https://images.unsplash.com/photo-1624647079030-4407051e3de8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80",
    "https://images.unsplash.com/photo-1542354255-839e272e3408?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1462&q=80",
  ];
  List<String> namesFood = ["Món ăn 1", "Món ăn 2", "Món ăn 3"];
  List<String> subNamesFood = ["Sub Món ăn 1", "Sub Món ăn 2", "Sub Món ăn 3"];

  int countItem = 1;
  int initialPrice = 25000;

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
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ConfirmOrder(),
                      ),
                    ),
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
                Text(
                  "Chi tiết đặt hàng",
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                AppSpacing.M,
                ListView.separated(
                  itemCount: 3,
                  separatorBuilder: (context, index) => AppSpacing.M,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Slidable(
                    key: const ValueKey(0),
                    endActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                          flex: 2,
                          onPressed: (_) {},
                          backgroundColor: Colors.grey.withOpacity(0.2),
                          foregroundColor: const Color(0xFF15BE77),
                          icon: Icons.delete,
                          label: 'Xóa',
                        ),
                      ],
                    ),
                    child: _buildCardOrder(
                      pathImage: images[index],
                      nameFood: namesFood[index],
                      subNameFood: subNamesFood[index],
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

  Widget _buildCardOrder({
    String? pathImage,
    String? nameFood,
    String? subNameFood,
  }) {
    return Container(
      padding: AppEdgeInsets.vertical(),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.grey.withOpacity(0.3),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              pathImage ?? "",
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: AppEdgeInsets.allXXS,
            child: RichText(
              text: TextSpan(
                style: GoogleFonts.beVietnamPro(color: Colors.black),
                children: [
                  TextSpan(
                    text: '${nameFood ?? ""}\n',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  TextSpan(text: '${subNameFood ?? ""}\n'),
                  TextSpan(
                    text: '$_price vnđ',
                    style: const TextStyle(
                      color: Color(0xFF15BE77),
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildCountItem()
        ],
      ),
    );
  }

  int get _price {
    if (countItem > 1) {
      return initialPrice * countItem;
    }
    return initialPrice;
  }

  Widget _buildCountItem() {
    return Row(
      children: [
        _buildActionCount(
          backgroundColor: const Color(0xFF53E88B).withOpacity(0.2),
          colorIcon: const Color(0xFF15BE77),
          pathIcon: AppAssets.icons.icMinus.path,
          onTap: () {
            setState(() {
              if (countItem <= 0) return;
              countItem--;
            });
          },
        ),
        AppSpacing.M,
        Text(
          "$countItem",
          style: const TextStyle(
            fontSize: 22,
          ),
        ),
        AppSpacing.M,
        _buildActionCount(
          backgroundColor: const Color(0xFF15BE77),
          colorIcon: Colors.white,
          pathIcon: AppAssets.icons.icAdd.path,
          onTap: () {
            setState(() {
              countItem++;
            });
          },
        ),
      ],
    );
  }

  Widget _buildActionCount({
    Color? backgroundColor,
    Color? colorIcon,
    String? pathIcon,
    Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: AppEdgeInsets.allXXS,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Image.asset(
          pathIcon ?? "",
          color: colorIcon,
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
