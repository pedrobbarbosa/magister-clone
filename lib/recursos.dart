import 'package:flutter/material.dart';
import 'package:magister_clone/Avaliar.dart';
import 'package:magister_clone/contato.dart';
import 'package:magister_clone/wifi.dart';
import 'Academicos.dart';
import 'horarios.dart';

class RecursosPage extends StatelessWidget {
  const RecursosPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recursos'),
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
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(height: 15),
              BoxItem(
                child: ListTile(
                  leading: icones(Icons.wifi),
                  title: texto('Wi-Fi'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => wifiPage()),
                    );
                    // Adicione aqui a ação ao clicar na opção
                  },
                ),
              ),
              SizedBox(height: 10),
              BoxItem(
                child: ListTile(
                  leading: icones(Icons.phonelink_setup_outlined),
                  title: texto('Avalie o Magister Mobile'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => avaliarPage()),
                    );
                    // Adicione aqui a ação ao clicar na opção
                  },
                ),
              ),
              SizedBox(height: 10),
              BoxItem(
                child: ListTile(
                  leading: icones(Icons.book),
                  title: texto('Avalie Sua Biblioteca'),
                  onTap: () {
                    // Adicione aqui a ação ao clicar na opção
                  },
                ),
              ),
              SizedBox(height: 10),
              BoxItem(
                child: ListTile(
                  leading: icones(Icons.people_outline_sharp),
                  title: texto('Contato'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => contatoPage()),
                    );
                    // Adicione aqui a ação ao clicar na opção
                  },
                ),
              ),
              SizedBox(height: 10),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}

Widget texto(String texto) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(0),
    ),
    padding: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
    child: Text(
      texto,
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Color.fromARGB(255, 128, 127, 127),
        fontSize: 18,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
    ),
  );
}

Widget icones(IconData iconData) {
  return Icon(
    iconData,
    size: 45,
    color: Color.fromARGB(255, 10, 118, 212),
  );
}
