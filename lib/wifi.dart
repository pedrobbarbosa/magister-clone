import 'package:flutter/material.dart';
import 'Academicos.dart';
import 'horarios.dart';

class wifiPage extends StatelessWidget {
  const wifiPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wi-Fi'),
        titleTextStyle: TextStyle(color: Colors.blue[900], fontSize: 22),
        iconTheme: IconThemeData(color: Colors.blue[900]),
        backgroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xFF234E98),
              const Color(0xFF1D3060),
            ],
          ),
        ),
      ),
    );
  }
}
