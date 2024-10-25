import 'package:flutter/material.dart';
import 'package:todoapp/pages/home_page.dart';
import 'package:todoapp/themes/colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: Scaffold(
        body: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: [HomePage(pageController: pageController)],
        ),
      ),
    );
  }
}
