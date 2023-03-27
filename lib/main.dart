import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu aplicativo',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 55, 90, 151),
      ),
      home: LoginPage(),
    );
  }
}
