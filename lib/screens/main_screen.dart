import 'package:babysitter/screens/ads/ads_screen.dart';
import 'package:babysitter/screens/nurse_signPage/nurse_signPage.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../data.dart';

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
          backgroundColor: kBaseColor2,
          child: Container(
            padding: EdgeInsets.only(top: 6, left: 3),
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
        );
  }

  getPage(int page) {
    switch (page) {
      case 0:
        return const Center(child: AdsScreen());
      case 1:
        return Scaffold(
          body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  ...List.generate(
                      states.length,
                      (index) => SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: GestureDetector(
                              onTap: () {
                                print('taped');
                                setState(() {
                                  states[index].isSelected == false
                                      ? states[index].isSelected = true
                                      : states[index].isSelected = false;
                                });
                              },
                              child: Card(
                                color: states[index].isSelected
                                    ? Colors.red[100]
                                    : Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    states[index].stateName.toString(),
                                    style: const TextStyle(fontSize: 22.0),
                                  ),
                                ),
                              ),
                            ),
                          )),
                ]),
              ),
            
        );
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
    return BottomAppBar(
      color: kBaseColor1,
      shape: const CircularNotchedRectangle(),
      child: Container(
        height: 47,
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
                  title: "استان",
                  isActive: currentIndex == 1,
                ),
              ),
            ),
            /*   Expanded(
              child: InkWell(
                onTap: () => onChange(1),
                child: BottomNavItem(
                  icon: Icons.verified_user,
                  title: "پروفایل",
                  isActive: currentIndex == 1,
                ),
              ),
            ),*/
          ],
        ),
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
