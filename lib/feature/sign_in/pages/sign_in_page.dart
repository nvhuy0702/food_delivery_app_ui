import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/edg_insets.dart';
import 'package:food_delivery_app_ui/core/util/space.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Image.asset(
                "assets/images/login_background.png",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/images/logo.png",
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
          ),
          AppSpacing.xXL,
          const Text(
            "Đăng nhập",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          AppSpacing.xXXL,
          Padding(
            padding: AppEdgeInsets.horizontal(),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  labelText: "Email"),
            ),
          ),
          AppSpacing.S,
          Padding(
            padding: AppEdgeInsets.horizontal(),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  labelText: "Mật khẩu",),
            ),
          ),
          AppSpacing.L,
          const Text(
            "Hoặc đăng nhập với",
            textAlign: TextAlign.center,
          ),
          AppSpacing.L,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _loginWithAccountOther(
                pathIcon: "assets/images/ic_facebook.png",
                content: "Facebook",
              ),
              _loginWithAccountOther(
                pathIcon: "assets/images/ic_google.png",
                content: "Google",
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Quên mật khẩu",
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          Padding(
            padding: AppEdgeInsets.symmetric(),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: AppEdgeInsets.allM,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                "Đăng nhập",
              ),
            ),
          )
        ],
      ),
    );
  }

  InkWell _loginWithAccountOther({
    String? pathIcon,
    String? content,
  }) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: AppEdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey, blurRadius: 1, offset: Offset(-2, 1))
            ]),
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
}
