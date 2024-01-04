import 'package:flutter/material.dart';

class HomeScreenBottomGridItem extends StatelessWidget {
  const HomeScreenBottomGridItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onSelectCategory,
  });
  final String title;
  final Icon icon;
  final void Function() onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectCategory,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 150,
        height: 150,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white24.withOpacity(0.5),
                spreadRadius: 4,
                blurRadius: 4,
                offset: const Offset(0, 5),
              ),
            ],
            color: const Color.fromARGB(255, 114, 232, 118),
            border: Border.all(),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(22, 255, 255, 255),
                Color.fromARGB(73, 255, 255, 255)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Column(
          children: [
            icon,
            Text(
              title,
              style: const TextStyle(
                  color: Color.fromARGB(255, 114, 232, 118), fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
