import 'package:flutter/material.dart';
import 'package:magister_clone/widgets/protocoloD.dart';

class ProtocolosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Protocolos'),
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
        child: ListView(
          children: [
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    width: 5,
                    color: Colors.green,
                  ),
                ),
              ),
              child: ProtocoloItem(
                titulo: '323/67621',
                descricao: 'Descrição do protocolo 1',
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    width: 5,
                    color: Colors.red,
                  ),
                ),
              ),
              child: ProtocoloItem(
                titulo: 'Protocolo 2',
                descricao: 'Descrição do protocolo 2',
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    width: 5,
                    color: Colors.yellow,
                  ),
                ),
              ),
              child: ProtocoloItem(
                titulo: 'Protocolo 3',
                descricao: 'Descrição do protocolo 3',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
