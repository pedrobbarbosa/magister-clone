import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:magister_clone/Academicos.dart';
import 'package:magister_clone/perfil.dart';
import 'package:magister_clone/recursos.dart';
import 'package:magister_clone/unit-web.dart';

import 'informacoes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenStata createState() => _HomeScreenStata();
}

class _HomeScreenStata extends State<HomeScreen> {
  var OptonsList = ['Acadêmico', 'informações', 'Unit na Web', 'Recursos'];
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
          radius: 30,
          backgroundImage: AssetImage('assets/images/perfil.png'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      backgroundColor: Colors.transparent,
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
        child: Center(
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  fit: BoxFit.cover,
                  'assets/images/logo.png', // substitua com o caminho da imagem do seu logo
                  height: 150,
                ),
                SizedBox(height: 160),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200,
                    pauseAutoPlayInFiniteScroll: true,
                  ),
                  items: [
                    'assets/images/hat.png',
                    'assets/images/info.png',
                    'assets/images/web.png',
                    'assets/images/recursos.png'
                  ].map((i) {
                    return Builder(builder: (BuildContext context) {
                      return GestureDetector(
                        onTap: () {
                          // Adicione aqui a ação desejada ao clicar no item do carousel
                          if (i == 'assets/images/hat.png') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AcademicsPage()),
                            );
                          } else if (i == 'assets/images/info.png') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => informationPage()),
                            );
                          } else if (i == 'assets/images/web.png') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => unitwebPage()),
                            );
                          } else if (i == 'assets/images/recursos.png') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RecursosPage()),
                            );
                          }
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Image.asset(
                                i,
                                fit: BoxFit.contain,
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.20,
                              ),
                              SizedBox(),
                              if (i == 'assets/images/hat.png')
                                caixaDeTexto(
                                  "${OptonsList[0]}",
                                ),
                              if (i == 'assets/images/info.png')
                                caixaDeTexto(
                                  "${OptonsList[1]}",
                                ),
                              if (i == 'assets/images/web.png')
                                caixaDeTexto(
                                  "${OptonsList[2]}",
                                ),
                              if (i == 'assets/images/recursos.png')
                                caixaDeTexto(
                                  "${OptonsList[3]}",
                                ),
                            ],
                          ),
                        ),
                      );
                    });
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget caixaDeTexto(String texto) {
  return Container(
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 238, 235, 235),
      borderRadius: BorderRadius.circular(10),
    ),
    clipBehavior: Clip.hardEdge,
    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 88),
    child: Text(
      texto,
      style: TextStyle(
        color: Color(0xFF234E98),
        fontSize: 18,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
    ),
  );
}
