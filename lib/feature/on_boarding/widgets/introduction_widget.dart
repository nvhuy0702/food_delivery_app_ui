import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/space.dart';
import 'package:food_delivery_app_ui/feature/sign_in/pages/sign_in_page.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionWidget extends StatefulWidget {
  const IntroductionWidget({super.key});

  @override
  State<IntroductionWidget> createState() => _IntroductionWidgetState();
}

class _IntroductionWidgetState extends State<IntroductionWidget> {
  final _introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: _introKey,
      allowImplicitScrolling: true,
      autoScrollDuration: 300,
      pages: [
        PageViewModel(
            title: '',
            bodyWidget: Column(
              children: [
                Image.asset(AppAssets.images.onBoarding1.path),
                _buildContent(
                  content: 'Tìm đồ ăn thoải mái của bạn ở đây',
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                AppSpacing.L,
                _buildContent(
                  content:
                      'Ở đây bạn có thể tìm thấy một đầu bếp hoặc món ăn cho mọi hương vị và màu sắc. Thưởng thức!',
                  fontSize: 12,
                ),
              ],
            )),
        PageViewModel(
            title: '',
            bodyWidget: Column(
              children: [
                Image.asset(
                  AppAssets.images.onBoarding2.path,
                  height: 426,
                ),
                _buildContent(
                  content: 'Tìm đồ ăn thoải mái của bạn ở đây',
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                AppSpacing.L,
                _buildContent(
                  content:
                      'Tận hưởng dịch vụ giao đồ ăn nhanh chóng và suôn sẻ ngay trước cửa nhà bạn',
                  fontSize: 12,
                ),
              ],
            )),
      ],
      showSkipButton: true,
      next: Image.asset(AppAssets.icons.icArrowRight.path),
      done: const Text('Xong', style: TextStyle(fontWeight: FontWeight.w600)),
      skip: const Text('Bỏ qua', style: TextStyle(fontWeight: FontWeight.w600)),
      onSkip: () => _onIntroEnd(context),
      onDone: () => _onIntroEnd(context),
    );
  }

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const SignInPage()),
    );
  }

  Text _buildContent({
    String? content,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    return Text(
      content ?? "",
      style: GoogleFonts.beVietnamPro(
        fontSize: fontSize,
        color: Colors.black,
        fontWeight: fontWeight,
      ),
      textAlign: TextAlign.center,
    );
  }
}
