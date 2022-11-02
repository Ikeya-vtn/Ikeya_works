import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/home_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyPortfolio();
  }
}

class MyPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Up Mountains',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}