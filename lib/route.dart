import 'package:babysitter/screens/nurseInfo/nurse_info_screen.dart';
import 'package:babysitter/screens/ads/ads_screen.dart';
import 'package:babysitter/screens/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'screens/main_screnn/main_screen.dart';

final Map<String, WidgetBuilder> myRoutes = {
  MainScreen.routeName: (context) => const MainScreen(),
  AdsScreen.routeName: (context) => const AdsScreen(),
  NurseInfo.routeName: (context) => const NurseInfo(),
  SearchScreen.routeName: (context) => const SearchScreen(),
};
