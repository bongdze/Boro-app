import 'package:flutter/material.dart';

class ThirdItem extends StatelessWidget {
  const ThirdItem(
      {super.key,
      required this.title,
      required this.color1,
      required this.color2});
  final String title;
  final Color color1, color2;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: const EdgeInsets.all(12),
        width: double.infinity,
        height: 400,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [color1, color2],
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
