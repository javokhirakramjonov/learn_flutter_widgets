import 'package:flutter/material.dart';
import 'package:learn_widgets/part2/login.dart';
import 'package:learn_widgets/part2/part_2.dart';
import 'package:learn_widgets/part2/practice.dart';
import 'package:learn_widgets/part2/shop_design.dart';
import 'package:learn_widgets/part4_practise/part4_practise.dart';
import 'package:learn_widgets/part5/news_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      // home: LoginScreen(),
      // home: SettingsScreen(),
      // home: ShopDesign()
      home: NewsScreen(),
    );
  }
}
