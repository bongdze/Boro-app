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
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(22, 255, 255, 255),
                Color.fromARGB(73, 255, 255, 255)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Column(
          children: [icon, Text(title)],
        ),
      ),
    );
  }
}
