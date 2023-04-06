import 'package:flutter/material.dart';
import 'package:magister_clone/widgets/textos.dart';

class NotasFaltasPage extends StatelessWidget {
  const NotasFaltasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Cria uma lista de horários fictícios
    final unidade1 = [
      {
        'nota': '-',
        'faltas': '04',
        'disciplina': 'CLOUD COMPUTING - E01',
      },
      {
        'nota': '-',
        'faltas': '10',
        'disciplina': 'CÁLCULO PARA COMPUTAÇÃO II - N02',
      },
      {
        'nota': '5',
        'faltas': '10',
        'disciplina': 'TEORIA DOS GRAFOS - E01',
      },
    ];
    final unidade2 = [
      {
        'nota': '-',
        'faltas': '0',
        'disciplina': 'Cloud Computing - E01',
      },
      {
        'nota': '-',
        'faltas': '0',
        'disciplina': 'CÁLCULO PARA COMPUTAÇÃO II - N02',
      },
      {
        'nota': '-',
        'faltas': '0',
        'disciplina': 'TEORIA DOS GRAFOS - E01',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notas e Faltas'),
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
                  itemCount: unidade1.length,
                  itemBuilder: (BuildContext context, int index) {
                    final horario = unidade1[index];
                    final horario2 = unidade2[index];

                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.only(),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            materia(
                              texto: '${horario['disciplina']}',
                            ),
                            SizedBox(height: 5),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 117, 117, 117),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: unidade(
                                      texto: 'UND 1',
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: notafalta(
                                      subtitle: '  ${horario['nota']} ',
                                      aulas: 'Nota',
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: notafalta(
                                      subtitle: ' ${horario['faltas']} ',
                                      aulas: 'Faltas',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 117, 117, 117),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: unidade(
                                      texto: 'UND 2',
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: notafalta(
                                      subtitle: '  ${horario2['nota']} ',
                                      aulas: 'Nota',
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: notafalta(
                                      subtitle: '  ${horario2['faltas']} ',
                                      aulas: 'Faltas',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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

class notafalta extends StatelessWidget {
  final String subtitle;
  final String aulas;
  const notafalta({Key? key, required this.subtitle, required this.aulas})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        border: Border(
          right: BorderSide(
            width: 1,
            color: Colors.grey,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 0, 156, 247),
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

class unidade extends StatelessWidget {
  final String texto;

  const unidade({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(4),
          bottomRight: Radius.circular(4),
        ),
        color: Color.fromARGB(255, 0, 156, 247),
      ),
      height: 50,
      child: Text(
        textAlign: TextAlign.center,
        texto,
        softWrap: false,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}

class materia extends StatelessWidget {
  final String texto;

  const materia({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          bottomLeft: Radius.circular(5),
        ),
      ),
      padding: const EdgeInsets.all(8.2),
      child: Text(
        textAlign: TextAlign.center,
        texto,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 15, 91, 153),
        ),
      ),
    );
  }
}
