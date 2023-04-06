import 'package:flutter/material.dart';
import 'package:magister_clone/home.dart';
import 'package:magister_clone/navegacao.dart';

import 'login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magister-Clone',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 55, 90, 151),
      ),
      home: LoginPage(),
    );
  }
}
