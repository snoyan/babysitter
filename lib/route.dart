import 'package:babysitter/Person_info.dart';
import 'package:babysitter/home_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> myRoutes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  PersonInfo.routeName: (context) => const PersonInfo(),
};
