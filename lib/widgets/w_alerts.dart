import 'package:flutter/material.dart';

class MyalertList extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final IconData trailing;
  final Function onTap;

  const MyalertList({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.trailing,
  });

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
      ),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title,
            style: TextStyle(
              color: Colors.blue[900],
            )),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.arrow_forward),
      ),
    );
  }
}
