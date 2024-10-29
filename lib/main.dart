import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:todoapp/features/today/views/pages/today_page.dart';
import 'package:todoapp/pages/todo_page.dart';
import 'package:todoapp/themes/colors.dart';

void main() async {
  await initializeDateFormatting('pt_BR', null);
  runApp(const ProviderScope(child: MainApp()));
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
          children: [
            TodayPage(pageController: pageController),
            TodoPage(pageController: pageController),
          ],
        ),
      ),
    );
  }
}
