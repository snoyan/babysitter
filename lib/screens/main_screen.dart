import 'package:babysitter/screens/ads_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static String routeName = "/main_screen";
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int _currentPage;

  @override
  void initState() {
    _currentPage = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getPage(_currentPage),
      bottomNavigationBar: AnimatedBottomNav(
          currentIndex: _currentPage,
          onChange: (index) {
            setState(() {
              _currentPage = index;
            });
          }),
    );
  }

  getPage(int page) {
    switch (page) {
      case 0:
        return const Center(child: AdsScreen());
      case 1:
        return const Center(
            child: Text("صفحه پورفایل",
                style: TextStyle(fontSize: 16, color: Colors.black)));
      case 2:
        return const Center(
            child: Text(" صفحه ارتباط با ما ",
                style: TextStyle(fontSize: 16, color: Colors.black)));
    }
  }
}

class AnimatedBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onChange;
  const AnimatedBottomNav(
      {Key? key, required this.currentIndex, required this.onChange})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: () => onChange(0),
              child: BottomNavItem(
                icon: Icons.home,
                title: "آگهی ها",
                isActive: currentIndex == 0,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => onChange(1),
              child: BottomNavItem(
                icon: Icons.verified_user,
                title: "پورفایل",
                isActive: currentIndex == 1,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => onChange(2),
              child: BottomNavItem(
                icon: Icons.more_vert,
                title: "ارتباط با ما",
                isActive: currentIndex == 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final bool isActive;
  final IconData icon;
  final Color? activeColor;
  final Color? inactiveColor;
  final String title;
  const BottomNavItem(
      {Key? key,
      this.isActive = false,
      required this.icon,
      this.activeColor,
      this.inactiveColor,
      required this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      transitionBuilder: (child, animation) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0.0, 1.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
      duration: const Duration(milliseconds: 500),
      reverseDuration: const Duration(milliseconds: 200),
      child: isActive
          ? Container(
              color: Colors.white,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: activeColor ?? Theme.of(context).primaryColor,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Container(
                    width: 5.0,
                    height: 5.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: activeColor ?? Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            )
          : Icon(
              icon,
              color: inactiveColor ?? Colors.grey,
            ),
    );
  }
}
