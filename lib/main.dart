import 'package:exam/pages/moody_page.dart';
import 'package:exam/pages/news_page.dart';
import 'package:exam/pages/workout_page.dart';
import 'package:flutter/material.dart';

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
      initialRoute: News.routeName,
      routes: {
        MoodyPage.routeName: (context) => const MoodyPage(),
        WorkOut.routeName: (context) => const WorkOut(),
        News.routeName: (context) => const News(),
      },
    );
  }
}
