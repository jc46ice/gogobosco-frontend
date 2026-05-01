import 'package:flutter/material.dart';
import 'routes.dart';

class GoGoBoscoApp extends StatelessWidget {
  const GoGoBoscoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.router, // 🔥 THIS CONNECTS EVERYTHING
    );
  }
}
