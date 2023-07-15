import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/feature/home/screens/chat_screen.dart';
import 'package:food_delivery_app_ui/feature/home/screens/home_screen.dart';
import 'package:food_delivery_app_ui/feature/home/widgets/bottom_navigation_bar_custom.dart';

class HomePage extends StatefulWidget {
  final bool showBack;
  final bool hideFilter;

  const HomePage({
    super.key,
    this.showBack = false,
    this.hideFilter = false,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    Center(
      child: Container(
        alignment: Alignment.center,
        height: 200,
        width: 200,
        color: Colors.yellow,
        child: const Text(
          'Index 1: Hồ sơ',
        ),
      ),
    ),
    Center(
      child: Container(
        alignment: Alignment.center,
        height: 200,
        width: 200,
        color: Colors.yellow,
        child: const Text(
          'Index 2: Giỏ hàng',
        ),
      ),
    ),
    const ChatScreen(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarCustom(
        callback: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
