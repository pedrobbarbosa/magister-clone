import 'package:flutter/material.dart';
import 'package:magister_clone/recursos.dart';

import 'Academicos.dart';
import 'horarios.dart';
import 'package:url_launcher/url_launcher.dart';

class informationPage extends StatelessWidget {
  const informationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informações'),
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
                  leading: icones(Icons.info_outline),
                  title: texto('Conheça o centro'),
                  onTap: () async {
                    const url = 'https://tiradentesinnovation.com/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Não foi possível abrir a página $url';
                    }
                  },
                ),
              ),
              SizedBox(height: 10),
              BoxItem(
                child: ListTile(
                  leading: icones(Icons.video_camera_back_outlined),
                  title: texto('Tuor Virtual'),
                  onTap: () async {
                    const url =
                        'https://www.youtube.com/watch?v=eKC3v_x7H9I&ab_channel=TiradentesInnovationCenter';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Não foi possível abrir a página $url';
                    }
                  },
                ),
              ),
              SizedBox(height: 10),
              BoxItem(
                child: ListTile(
                  leading: icones(Icons.edit_notifications_rounded),
                  title: texto('Eventos e Cursos'),
                  onTap: () async {
                    const url = 'https://tiradentesinnovation.com/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Não foi possível abrir a página $url';
                    }
                  },
                ),
              ),
              SizedBox(height: 10),
              BoxItem(
                child: ListTile(
                  leading: icones(Icons.engineering),
                  title: texto('Espaço Maker'),
                  onTap: () {
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
