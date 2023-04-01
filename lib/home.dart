import 'package:flutter/material.dart';
import 'package:magister_clone/perfil.dart';

import 'alert.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

@override
_HomeScreenState createState() => _HomeScreenState();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Perfil()),
          );
          // ação quando o botão é pressionado
        },
        backgroundColor: Colors.transparent,
        child: CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/images/perfil.png'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      backgroundColor: Color(0xFF234E98),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png', // substitua com o caminho da imagem do seu logo
                height: 100,
              ),
              SizedBox(height: 180),
            ],
          ),
        ),
      ),
    );
  }
}
