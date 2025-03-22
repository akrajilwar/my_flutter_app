import 'package:flutter/material.dart';

import '../providers/app_provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppProvider.of(context).loadSplashScreen();
    return Scaffold(
      body: const Center(
        child: Text('My Flutter App'),
      ),
    );
  }
}
