// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'screens/ads/ads_screen.dart';
import 'screens/main_screen/main_screen.dart';
import 'screens/nurseInfo/person_info_screen.dart';
import 'screens/nurse_signPage/nurse_signPage.dart';
import 'screens/search/search_screen.dart';

final Map<String, WidgetBuilder> myRoutes = {
  MainScreen.routeName: (context) => const MainScreen(),
  AdsScreen.routeName: (context) => const AdsScreen(),
  NurseInfo.routeName: (context) => NurseInfo(),
  NurseSignUp.routeName: (context) => NurseSignUp(),
  SearchScreen.routeName: (context) => SearchScreen(),
};
