import 'package:babysitter/screens/ads/ads_screen.dart';
import 'package:babysitter/screens/nurse_signPage/nurse_signPage.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import 'components/animated_bottom_nav.dart';

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
        floatingActionButton: FloatingActionButton(
          heroTag: const Text('btn1'),
          backgroundColor: kBaseColor2,
          child: Container(
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
            Navigator.pushNamed(context, NurseSignUp.routeName);
          },
        )
/*
          bottomNavigationBar: AnimatedBottomNav(
          
          currentIndex: _currentPage,
          onChange: (index) {
            setState(() {
              _currentPage = index;
            });
          }),*/
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
