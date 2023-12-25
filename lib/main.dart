import 'package:firebase_analytics_example/init.dart';
import 'package:firebase_analytics_example/presentation/home_screen.dart';
import 'package:flutter/material.dart';


Future main() async {
  await Init.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(useMaterial3: false),
      home: const HomeScreen(),
    );
  }
}
