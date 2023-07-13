import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationBarCustom extends StatefulWidget {
  final Function(int index)? callback;

  const BottomNavigationBarCustom({
    super.key,
    this.callback,
  });

  @override
  State<BottomNavigationBarCustom> createState() =>
      _BottomNavigationBarCustomState();
}

class _BottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
  var currentIndex = 0;
  List<String> listOfIcons = [
    AppAssets.icons.icHome.path,
    AppAssets.icons.icProfile.path,
    AppAssets.icons.icCart.path,
    AppAssets.icons.icMess.path,
  ];

  List<String> listOfStrings = [
    'Trang chủ',
    'Tài khoản',
    'Giỏ hàng',
    'Trò chuyện',
  ];

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(displayWidth * .05),
      height: displayWidth * .155,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.1),
            blurRadius: 30,
            offset: const Offset(0, 10),
          ),
        ],
        borderRadius: BorderRadius.circular(25),
      ),
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            setState(() {
              currentIndex = index;
              widget.callback?.call(currentIndex);
              HapticFeedback.lightImpact();
            });
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Stack(
            children: [
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.fastLinearToSlowEaseIn,
                width: index == currentIndex
                    ? displayWidth * .32
                    : displayWidth * .18,
                alignment: Alignment.center,
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  height: index == currentIndex ? displayWidth * .12 : 0,
                  width: index == currentIndex ? displayWidth * .32 : 0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFF53E88B).withOpacity(0.1),
                        const Color(0xFF15BE77).withOpacity(0.3),
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.fastLinearToSlowEaseIn,
                width: index == currentIndex
                    ? displayWidth * .31
                    : displayWidth * .18,
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                          width: index == currentIndex ? displayWidth * .13 : 0,
                        ),
                        AnimatedOpacity(
                          opacity: index == currentIndex ? 1 : 0,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                          child: Text(
                            index == currentIndex ? listOfStrings[index] : '',
                            style: GoogleFonts.beVietnamPro(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                          width:
                              index == currentIndex ? displayWidth * .03 : 20,
                        ),
                        Image.asset(
                          listOfIcons[index],
                          color: index == currentIndex
                              ? const Color(0xFF15BE77)
                              : Colors.black26,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
