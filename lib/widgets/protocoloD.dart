import 'package:flutter/material.dart';

class ProtocoloItem extends StatelessWidget {
  final String titulo;
  final String descricao;

  ProtocoloItem({required this.titulo, required this.descricao});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.0),
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
        borderRadius: BorderRadius.circular(0),
      ),
      child: ListTile(
        title: Text(titulo, style: TextStyle(color: Colors.blue[900])),
        subtitle: Text(descricao),
      ),
    );
  }
}
