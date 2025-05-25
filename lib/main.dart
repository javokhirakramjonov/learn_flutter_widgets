import 'package:flutter/material.dart';
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
