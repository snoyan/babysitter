import 'package:babysitter/screens/nurseInfo/person_info_screen.dart';
import 'package:babysitter/screens/ads/ads_screen.dart';
import 'package:babysitter/screens/nurse_signPage/nurse_signPage.dart';
import 'package:flutter/material.dart';

import 'screens/main_screen.dart';

final Map<String, WidgetBuilder> myRoutes = {
  MainScreen.routeName: (context) => const MainScreen(),
  AdsScreen.routeName: (context) => const AdsScreen(),
  NurseInfo.routeName: (context) =>  NurseInfo(),
  NurseSignUp.routeName:(context) => NurseSignUp(),
};
