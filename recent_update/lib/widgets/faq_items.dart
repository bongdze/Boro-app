import 'package:flutter/material.dart';

class FaqItems extends StatelessWidget {
  const FaqItems(
      {super.key,
      required this.icon,
      required this.text,
      required this.openFaqItem});
  final Icon icon;
  final String text;
  final void Function() openFaqItem;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: InkWell(
        onTap: openFaqItem,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          height: 80,
          width: double.infinity,
          child: Row(
            children: [
              icon,
              const SizedBox(width: 10),
              Text(
                text,
                style: const TextStyle(fontSize: 15),
              ),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
      ),
    );
  }
}
