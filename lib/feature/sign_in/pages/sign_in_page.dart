import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/edg_insets.dart';
import 'package:food_delivery_app_ui/core/util/space.dart';
import 'package:food_delivery_app_ui/feature/home/pages/home_page.dart';
import 'package:food_delivery_app_ui/feature/sign_up/sign_up_page.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildLogo(),
            AppSpacing.xXL,
            _buildTextLogin,
            AppSpacing.xXXL,
            _buildTextFormField(
              txtController: _mailController,
              labelText: "Email",
            ),
            AppSpacing.S,
            _buildTextFormField(
              txtController: _passwordController,
              labelText: "Mật khẩu",
              isShowSuffixIcon: true,
            ),
            AppSpacing.L,
            _buildTextLoginOther,
            AppSpacing.L,
            _buildOptionLogin(),
            AppSpacing.L,
            _forgotPassword,
            _btnLogin(),
            _noAccount
          ],
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Image.asset(
          AppAssets.images.loginBackground.path,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fitWidth,
        ),
        Column(
          children: [
            Image.asset(
              AppAssets.images.logo.path,
            ),
            Text(
              "Tên cửa hàng",
              style: GoogleFonts.nunito(
                  fontSize: 40,
                  color: const Color(0xFF53E88B),
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Giao đồ ăn yêu thích",
              style: TextStyle(fontWeight: FontWeight.w600),
            )
          ],
        )
      ],
    );
  }

  Text get _buildTextLogin => const Text(
        "Đăng nhập",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      );

  Widget _buildTextFormField({
    TextEditingController? txtController,
    String? labelText,
    bool isShowSuffixIcon = false,
  }) {
    return Padding(
      padding: AppEdgeInsets.horizontal(),
      child: TextFormField(
        controller: txtController,
        obscureText: _obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          suffixIcon: isShowSuffixIcon
              ? IconButton(
                  onPressed: () => setState(() => _obscureText = !_obscureText),
                  icon: _obscureText
                      ? Image.asset(AppAssets.icons.icShow.path)
                      : Image.asset(AppAssets.icons.icHide.path),
                )
              : null,
          labelText: labelText,
        ),
      ),
    );
  }

  Text get _buildTextLoginOther => const Text(
        "Hoặc đăng nhập với",
        textAlign: TextAlign.center,
      );

  Row _buildOptionLogin() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _loginWithAccountOther(
          pathIcon: AppAssets.images.icFacebook.path,
          content: "Facebook",
        ),
        _loginWithAccountOther(
          pathIcon: AppAssets.images.icGoogle.path,
          content: "Google",
        ),
      ],
    );
  }

  InkWell _loginWithAccountOther({
    String? pathIcon,
    String? content,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {},
      child: Container(
        padding: AppEdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        child: Row(
          children: [
            Image.asset(pathIcon ?? ""),
            AppSpacing.M,
            Text(content ?? "")
          ],
        ),
      ),
    );
  }

  TextButton get _forgotPassword => TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: const Size(50, 30),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: const Text(
          "Quên mật khẩu",
          style: TextStyle(
            decoration: TextDecoration.underline,
          ),
        ),
      );

  Padding _btnLogin() {
    return Padding(
      padding: AppEdgeInsets.symmetric(),
      child: ElevatedButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const HomePage(),
          ),
        ),
        style: ElevatedButton.styleFrom(
          fixedSize: Size(MediaQuery.of(context).size.width * 1, 50),
          padding: AppEdgeInsets.allM,
          backgroundColor: const Color(0xFF53E88B),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: const Text(
          "Đăng nhập",
        ),
      ),
    );
  }

  TextButton get _noAccount => TextButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const SignUpPage(),
          ),
        ),
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: const Size(50, 30),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: const Text(
          "Bạn chưa có tài khoản? Đăng ký ngay",
          style: TextStyle(color: Color(0xFF53E88B)),
        ),
      );
}
