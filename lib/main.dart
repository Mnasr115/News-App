import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/Home_screen.dart';
import 'package:news_app/services/News_services.dart';

void main() {
 // NewsServices(Dio()).getNews();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
