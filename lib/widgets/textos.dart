import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  final String texto;

  const TextContainer({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Color.fromARGB(255, 0, 156, 247),
      ),
      width: double.infinity,
      margin: EdgeInsets.only(left: 20),
      padding: const EdgeInsets.all(20),
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
