import 'package:flutter/material.dart';
import 'package:majd_router_manager/majd_router_manager.dart';
import 'package:majd_router_manager/routes/app_pages.dart';
import 'package:majd_router_manager/routes/app_routes.dart';
import 'package:majd_router_manager/screen/home_screen.dart';
import 'package:majd_router_manager/screen/profile_screen.dart';
import 'package:majd_router_manager/screen/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: MajdRouterManager.navigatorKey,
      debugShowCheckedModeBanner: false,
      routes: AppPages.routes,
      initialRoute: AppRoutes.home,
    );
  }
}
