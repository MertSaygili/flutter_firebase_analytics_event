import 'package:firebase_analytics_example/firebase/firebase_events.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: InkWell(
        onTap: () async {
          FirebaseEvents.logEvent(name: FirebaseEventNames.homeScreenTapped, parameters: {"tapped": "true"});
        },
        child: const Center(
          child: Text('Home Screen'),
        ),
      ),
    );
  }
}
