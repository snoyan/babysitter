import 'package:babysitter/screens/ads/ads_screen.dart';
import 'package:babysitter/screens/login/login_popup.dart';
import 'package:babysitter/screens/nurseProfile/components/edit_profile.dart';
import 'package:babysitter/screens/nurseProfile/profile_screen.dart';
import 'package:babysitter/screens/nurse_signPage/nurse_signPage.dart';
import 'package:babysitter/screens/set_state.dart/setState_screen.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../data.dart';
import 'components/animated_bottom_nav.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static String routeName = "/main_screen";
  static int selectedState = 0;
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int _currentPage;
  bool isLogedIn = false;
  bool hasAds =false;
  @override
  void initState() {
    _currentPage = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: getPage(_currentPage),
      bottomNavigationBar: AnimatedBottomNav(
          currentIndex: _currentPage,
          onChange: (index) {
            setState(() {
              _currentPage = index;
            });
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _currentPage == 0
          ? FloatingActionButton(
              backgroundColor: kBaseColor2,
              child: isLogedIn
                  ? Container(
                      padding: const EdgeInsets.only(top: 6, left: 3),
                      child: const Center(
                          child: Text(
                        " آگهی\n  من ",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "iransans",
                          fontWeight: FontWeight.w800,
                          height: 1.2,
                        ),
                      )),
                    )
                  : Container(
                      padding: const EdgeInsets.only(top: 6, left: 3),
                      child: const Center(
                          child: Text(
                        " پرستار\n   شو  ",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "iransans",
                          fontWeight: FontWeight.w800,
                          height: 1.2,
                        ),
                      )),
                    ),
              onPressed: () {
                isLogedIn
                    ? hasAds ? Navigator.pushNamed(context, EditProfileScreen.routeName) : Navigator.pushNamed(context,NurseSignUp.routeName)
                    : Navigator.pushNamed(context, LoginScreen.routeName);//بعد از لاگین چک شود اگر فرم داشت به پروفایل منتقل شود در غیر این صورت به فرمساز
              },
            )
          : FloatingActionButton(
              backgroundColor: Colors.green,
              child: const Center(
                  child: Icon(
                Icons.save,
                color: Colors.white,
                size: 32,
              )),
              onPressed: () {
                // Navigator.pushNamedAndRemoveUntil(context, AdsScreen.routeName);
                setState(() {
                  _currentPage = 0;
                });
              },
            ),
    );
  }

  getPage(int page) {
    switch (page) {
      case 0:
        return Center(
            child: AdsScreen(
          stateindex: MainScreen.selectedState,
        ));
      case 1:
        return const Center(
          child: SetState(),
        );
      case 2:
        return const Center(
            child: Text(" صفحه ارتباط با ما ",
                style: TextStyle(fontSize: 16, color: Colors.black)));
    }
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
              //color: Colors.white,
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
