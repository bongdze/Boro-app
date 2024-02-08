import 'package:flutter/material.dart';

class SecondItems extends StatelessWidget {
  const SecondItems({super.key, required this.label, required this.subLabel});

  final String label;
  final String subLabel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
          height: 89,
          width: 300,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      label,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.play_arrow_outlined,
                      size: 50,
                      color: Color.fromARGB(255, 72, 131, 179),
                    )
                  ],
                ),
              ),
              Text(subLabel),
            ],
          ),
        ),
      ),
    );
  }
}
