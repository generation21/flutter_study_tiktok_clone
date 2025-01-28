import 'package:flutter/material.dart';
import 'package:tiktok/constants/sizes.dart';
import 'package:tiktok/features/authentication/sign_up_screen.dart';
import 'package:tiktok/features/main_navigation/main_navigation_screen.dart';

void main() {
  runApp(const TikTokApp());
}

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: const Color(0xFFE0435A),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            titleTextStyle: TextStyle(
              fontSize: Sizes.size16 + Sizes.size2,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          bottomAppBarTheme: const BottomAppBarTheme(
            color: Colors.white,
          )),
      home: const Scaffold(
        body: MainNavigationScreen(),
      ),
    );
  }
}
