import 'package:flutter/material.dart';
import 'Academicos.dart';
import 'horarios.dart';

class CalculoMediaPage extends StatefulWidget {
  @override
  _CalculadoraNotasState createState() => _CalculadoraNotasState();
}

class _CalculadoraNotasState extends State<CalculoMediaPage> {
  final nota1Controller = TextEditingController();
  final nota2Controller = TextEditingController();
  double media = 0.0;

  void _calcularMedia() {
    double nota1 = double.tryParse(nota1Controller.text) ?? 0.0;
    double nota2 = double.tryParse(nota2Controller.text) ?? 0.0;

    setState(() {
      media = (nota1 + nota2) / 2.0;
    });
  }

  String _getSituacao() {
    if (media >= 6.0) {
      return "Aprovado";
    } else {
      return "Prova Final";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
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
        child: Column(
          children: [
            Boxaprovado(
              child: ListTile(
                leading: Image.asset('lib/icons/calculonota.png'),
                title: texto2('Quer Saber a sua média?'),
                onTap: () {
                  // Adicione aqui a ação ao clicar na opção
                },
              ),
            ),
            texto2(
              ('informe abaixo nos campos as suas notas'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: TextField(
                controller: nota1Controller,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Nota 1',
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: TextField(
                controller: nota2Controller,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Nota 2',
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _calcularMedia,
                  child: calcular(
                    texto: ('Calcular'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    nota1Controller.clear();
                    nota2Controller.clear();
                    setState(() {
                      media = 0.0;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 255, 255, 255), width: 2),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                    ),
                    child: limpar(
                      texto: ('Limpar'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.0),
            Text(
              'Média: ${media.toStringAsFixed(1)}',
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 1.0),
            Text(
              'Situação: ${_getSituacao()}',
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class calcular extends StatelessWidget {
  final String texto;

  const calcular({Key? key, required this.texto}) : super(key: key);

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
      height: 20,
      width: 100,
      child: Text(
        textAlign: TextAlign.center,
        texto,
        softWrap: false,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}

class limpar extends StatelessWidget {
  final String texto;

  const limpar({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(4),
          bottomRight: Radius.circular(4),
        ),
      ),
      height: 20,
      width: 100,
      child: Text(
        textAlign: TextAlign.center,
        texto,
        softWrap: false,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
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
      ),
      height: 20,
      width: 100,
      child: Text(
        textAlign: TextAlign.center,
        texto,
        softWrap: false,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}

class Boxaprovado extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;

  const Boxaprovado(
      {Key? key, required this.child, this.padding = const EdgeInsets.all(16)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 0, 156, 247),
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

Widget texto2(String texto) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(0),
    ),
    padding: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
    child: Text(
      texto,
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 18,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
    ),
  );
}
