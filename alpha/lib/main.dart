import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Alpha',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            centerTitle: true,
            elevation: 1,
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19),
            backgroundColor: Color(0xFF7E22CE),
          ),
          useMaterial3: true,
        ),
        home: const HomeScreen());
  }
}
