import 'package:flutter/material.dart';
import 'package:google_clone_ui/colors.dart';
import 'package:google_clone_ui/responsive/responsive_layout.dart';
import 'package:google_clone_ui/responsive/web_screen_layout.dart';
import 'package:google_clone_ui/responsive/mobile_screen_layout.dart';

void main() {
  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenLayout: WebScreenLayout(),)
    );
  }
}


