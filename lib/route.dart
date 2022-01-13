import 'package:babysitter/screens/person_info_screen.dart';
import 'package:babysitter/screens/ads_screen.dart';
import 'package:flutter/material.dart';

import 'main_screen.dart';

final Map<String, WidgetBuilder> myRoutes = {
  MainScreen.routeName: (context) => const MainScreen(),
  AdsScreen.routeName: (context) => const AdsScreen(),
  PersonInfo.routeName: (context) => const PersonInfo(),
};
