import 'package:flutter/material.dart';
import 'package:majd_router_manager/screen/home_screen.dart';
import 'package:majd_router_manager/screen/profile_screen.dart';
import 'package:majd_router_manager/screen/settings_screen.dart';
import 'app_routes.dart';

class AppPages {
  static Map<String, Widget Function(BuildContext)> routes = {
    AppRoutes.home: (_) => HomeScreen(),
    AppRoutes.profile: (_) => ProfileScreen(),
    AppRoutes.settings: (_) => SettingsScreen(),
  };
}
