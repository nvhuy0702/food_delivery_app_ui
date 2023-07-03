import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/edg_insets.dart';
import 'package:food_delivery_app_ui/core/util/size.dart';
import 'package:food_delivery_app_ui/core/util/space.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  static const signUpPage = "SignUpPage";

  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildLogo(),
            AppSpacing.xXL,
            _buildTextLogin,
            AppSpacing.xXXL,
            _buildTextFormField(
              txtController: _passwordController,
              labelText: "Tên người dùng",
              prefixIcon: Image.asset(AppAssets.icons.icUser.path),
            ),
            AppSpacing.S,
            _buildTextFormField(
              txtController: _mailController,
              labelText: "Email",
              prefixIcon: Image.asset(AppAssets.icons.icMail.path),
            ),
            AppSpacing.S,
            _buildTextFormField(
              txtController: _passwordController,
              labelText: "Mật khẩu",
              isShowSuffixIcon: true,
              prefixIcon: Image.asset(AppAssets.icons.icPassword.path),
            ),
            CheckboxListTile(
              checkColor: Colors.white,
              activeColor: const Color(0xFF53E88B),
              title: const Text("Giữ đăng nhập"),
              value: isChecked,
              controlAffinity: ListTileControlAffinity.leading,
              visualDensity: const VisualDensity(
                horizontal: VisualDensity.minimumDensity,
                vertical: VisualDensity.maximumDensity,
              ),
              contentPadding: const EdgeInsets.only(left: AppSize.xXS),
              checkboxShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            _btnCreateAccount(),
            _haveAccount
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

  Widget get _buildTextLogin => const Center(
        child: Text(
          "Đăng ký",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      );

  Widget _buildTextFormField({
    TextEditingController? txtController,
    String? labelText,
    bool isShowSuffixIcon = false,
    Widget? prefixIcon,
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
          prefixIcon: prefixIcon,
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

  Padding _btnCreateAccount() {
    return Padding(
      padding: AppEdgeInsets.symmetric(),
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
          "Tạo tài khoản",
        ),
      ),
    );
  }

  TextButton get _haveAccount => TextButton(
        onPressed: () => Navigator.pop(context),
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: const Size(50, 30),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: const Center(
          child: Text(
            "Bạn đã có tài khoản? Đăng nhập ngay",
            style: TextStyle(
              color: Color(0xFF53E88B),
            ),
          ),
        ),
      );
}
