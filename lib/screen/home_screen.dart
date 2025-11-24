import 'package:flutter/material.dart';
import 'package:majd_router_manager/routes/app_routes.dart';
import '../majd_router_manager.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Normal Route (Constructor):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              color: Colors.grey[200],
              padding: const EdgeInsets.all(8),
              child: const Text(
                "MajdRouterManager.go(ProfileScreen(name_2: 'Majd', age_2: 23))",
                style: TextStyle(fontFamily: 'monospace'),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                MajdRouterManager.go(ProfileScreen(name_2: 'Majd', age_2: 23));
              },
              child: const Text('Go (Normal Route)'),
            ),

            const SizedBox(height: 24),
            const Text(
              'Named Route (arguments):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              color: Colors.grey[200],
              padding: const EdgeInsets.all(8),
              child: const Text(
                "MajdRouterManager.goNamed(AppRoutes.profile, arguments: {'name': 'Majd', 'age': 23})",
                style: TextStyle(fontFamily: 'monospace'),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                MajdRouterManager.goNamed(
                  AppRoutes.profile,
                  arguments: {'name': 'Majd', 'age': 23},
                );
              },
              child: const Text('Go (Named Route)'),
            ),
          ],
        ),
      ),
    );
  }
}
