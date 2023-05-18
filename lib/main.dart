import 'package:flutter/material.dart';

import 'homepage.dart';
import 'navbar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const NavBar(),
              Expanded(
                child: Homepage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
