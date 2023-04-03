import 'package:flutter/material.dart';
import 'package:magister_clone/widgets/textos.dart';

class HorariosPage extends StatelessWidget {
  const HorariosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Cria uma lista de horários fictícios
    final horarios = [
      {
        'campus': 'Campus Aracaju -Farolândia',
        'data': '28/03/2023',
        'diaSemana': 'Segunda Feira',
        'bloco': 'G',
        'disciplina': 'Cloud Computing-E01',
        'hora': '20:35',
        'sala': '18',
      },
      {
        'campus': 'Campus Aracaju -Farolândia',
        'data': '29/03/2023',
        'diaSemana': 'Terça Feira',
        'bloco': 'A',
        'disciplina': 'DESENVOLVIMENTO PARA DISPOSITIVOS MÓVEIS-N01',
        'hora': '18:45',
        'sala': '24',
      },
      {
        'sala': '18',
        'hora': '20:35',
        'campus': 'Campus Aracaju -Farolândia',
        'data': '30/03/2023',
        'diaSemana': 'Quarta Feira',
        'bloco': 'G',
        'disciplina': 'História'
      },
      {
        'sala': '18',
        'hora': '20:35',
        'campus': 'Campus Aracaju -Farolândia',
        'data': '31/03/2023',
        'diaSemana': 'Quinta Feira',
        'bloco': 'C',
        'disciplina': 'Geografia'
      },
      {
        'sala': '18',
        'hora': '20:35',
        'campus': 'Campus Aracaju -Farolândia',
        'data': '01/04/2023',
        'diaSemana': 'Sexta Feira',
        'bloco': 'G',
        'disciplina': 'Ciências'
      },
    ];
    final horarios2 = [
      {
        'campus': 'Campus Aracaju -Farolândia',
        'data': '28/03/2023',
        'diaSemana': 'Segunda Feira',
        'bloco': 'G',
        'disciplina': 'Cloud Computing-E01',
        'hora': '21:25',
        'sala': '18',
      },
      {
        'campus': 'Campus Aracaju -Farolândia',
        'data': '29/03/2023',
        'diaSemana': 'Terça Feira',
        'bloco': 'A',
        'disciplina': 'DESENVOLVIMENTO PARA DISPOSITIVOS MÓVEIS-N01',
        'hora': '20:35',
        'sala': '24',
      },
      {
        'sala': '18',
        'hora': '20:35',
        'campus': 'Campus Aracaju -Farolândia',
        'data': '30/03/2023',
        'diaSemana': 'Quarta Feira',
        'bloco': 'G',
        'disciplina': 'História'
      },
      {
        'sala': '18',
        'hora': '20:35',
        'campus': 'Campus Aracaju -Farolândia',
        'data': '31/03/2023',
        'diaSemana': 'Quinta Feira',
        'bloco': 'C',
        'disciplina': 'Geografia'
      },
      {
        'sala': '18',
        'hora': '20:35',
        'campus': 'Campus Aracaju -Farolândia',
        'data': '01/04/2023',
        'diaSemana': 'Sexta Feira',
        'bloco': 'G',
        'disciplina': 'Ciências'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Horários'),
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: horarios.length,
                  itemBuilder: (BuildContext context, int index) {
                    final horario = horarios[index];
                    final horario2 = horarios2[index];

                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextContainer(
                            texto:
                                '${horario['data']} - ${horario['diaSemana']}',
                          ),
                          SizedBox(height: 10),
                          textocinza(
                            texto: '${horario['campus']}',
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: hora(
                                  texto: '${horario['hora']}',
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: textocenter(
                                  subtitle:
                                      ' BLOCO ${horario['bloco']} - SALA ${horario['sala']}',
                                  aulas: '${horario['disciplina']}',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: hora(
                                  texto: '${horario2['hora']}',
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: textocenter(
                                  subtitle:
                                      ' BLOCO ${horario2['bloco']} - SALA ${horario2['sala']}',
                                  aulas: '${horario2['disciplina']}',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class textocinza extends StatelessWidget {
  final String texto;

  const textocinza({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Color.fromARGB(255, 110, 110, 110),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

class textocenter extends StatelessWidget {
  final String subtitle;
  final String aulas;
  const textocenter({Key? key, required this.subtitle, required this.aulas})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(5),
          bottomRight: Radius.circular(5),
        ),
      ),
      height: 45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 15, 91, 153),
              fontWeight: FontWeight.w600,
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              aulas,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class hora extends StatelessWidget {
  final String texto;

  const hora({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          bottomLeft: Radius.circular(5),
        ),
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      padding: const EdgeInsets.all(8.2),
      child: Text(
        textAlign: TextAlign.center,
        texto,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 126, 126, 126),
        ),
      ),
    );
  }
}
