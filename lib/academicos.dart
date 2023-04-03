import 'package:flutter/material.dart';

import 'horarios.dart';

class BoxItem extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;

  const BoxItem(
      {Key? key, required this.child, this.padding = const EdgeInsets.all(16)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(0, 1),
            blurRadius: 2,
            spreadRadius: 2,
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}

class AcademicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acadêmicos'),
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
                  leading: icones(Icons.calendar_today),
                  title: texto('Horários'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HorariosPage()),
                    );

                    // Adicione aqui a ação ao clicar na opção
                  },
                ),
              ),
              SizedBox(height: 10),
              BoxItem(
                child: ListTile(
                  leading: icones(Icons.school),
                  title: texto('Cursos'),
                  onTap: () {
                    // Adicione aqui a ação ao clicar na opção
                  },
                ),
              ),
              SizedBox(height: 10),
              BoxItem(
                child: ListTile(
                  leading: icones(Icons.assignment),
                  title: texto('Notas e Faltas'),
                  onTap: () {
                    // Adicione aqui a ação ao clicar na opção
                  },
                ),
              ),
              SizedBox(height: 10),
              BoxItem(
                child: ListTile(
                  leading: icones(Icons.assignment_turned_in),
                  title: texto('Notas'),
                  onTap: () {
                    // Adicione aqui a ação ao clicar na opção
                  },
                ),
              ),
              SizedBox(height: 10),
              BoxItem(
                child: ListTile(
                  leading: icones(Icons.calendar_today),
                  title: texto('Horários'),
                  onTap: () {
                    // Adicione aqui a ação ao clicar na opção
                  },
                ),
              ),
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
    color: Color.fromARGB(255, 163, 212, 255),
  );
}
