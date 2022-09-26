import 'package:flutter/material.dart';
import 'package:news_24_7/pages/article_details.dart';
import 'package:news_24_7/pages/home_page.dart';
import 'package:news_24_7/utils/routes.dart';
import 'package:news_24_7/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeroute,
      routes: {
        MyRoutes.homeroute: (context) => const MyHomePage(),
        MyRoutes.articledetails: (context) => const ArticlePage(),
      },
    );
  }
}
