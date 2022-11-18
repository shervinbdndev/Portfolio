import 'package:flutter/material.dart';
import 'package:portfolio/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Wellcome',
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: PortfolioMainPage(),
    );
  }
}
