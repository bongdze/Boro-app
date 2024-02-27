//import 'package:example/screens/first_blog_details_screen.dart';
import 'package:example/widgets/blog_section.dart';
import 'package:flutter/material.dart';

class FirstItems extends StatelessWidget {
  const FirstItems({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    void itemDetails() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => const BlogSection()));
    }

    return Card(
      elevation: 10,
      child: InkWell(
        onTap: () {
          itemDetails();
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
          height: 80,
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                label,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
