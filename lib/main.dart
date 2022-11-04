import 'package:flutter/material.dart';
import 'package:hy_food_delivevry/detail_page.dart';
import 'package:hy_food_delivevry/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery Apps',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
