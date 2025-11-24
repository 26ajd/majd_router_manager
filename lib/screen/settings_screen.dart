import 'package:flutter/material.dart';
import 'package:majd_router_manager/majd_router_manager.dart';
import 'package:majd_router_manager/routes/app_routes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings Screen')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Settings Screen',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              color: Colors.grey[200],
              padding: const EdgeInsets.all(8),
              child: const Text(
                "MajdRouterManager.goNamed(AppRoutes.home)",
                style: TextStyle(fontFamily: 'monospace'),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => MajdRouterManager.goNamed(AppRoutes.home),
              child: const Text('Go to Home (Named Route)'),
            ),

            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              color: Colors.grey[200],
              padding: const EdgeInsets.all(8),
              child: const Text(
                "MajdRouterManager.backTimes(2)",
                style: TextStyle(fontFamily: 'monospace'),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => MajdRouterManager.backTimes(2),
              child: const Text('Go back two screens'),
            ),

            Container(
              width: double.infinity,
              color: Colors.grey[200],
              padding: const EdgeInsets.all(8),
              child: const Text(
                "MajdRouterManager.backTimes(1)",
                style: TextStyle(fontFamily: 'monospace'),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => MajdRouterManager.backTimes(1),
              child: const Text('Go back one screen'),
            ),
          ],
        ),
      ),
    );
  }
}
