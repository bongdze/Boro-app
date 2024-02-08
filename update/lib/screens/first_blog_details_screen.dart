import 'package:flutter/material.dart';

class FirstItemsDetailsScreen extends StatelessWidget {
  const FirstItemsDetailsScreen(
      {super.key,
      required this.title,
      required this.content,
      required this.btnText,
      required this.onClick});

  final String title;
  final String content;
  final String btnText;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
      child: Card(
        elevation: 5,
        child: Container(
          color: Colors.white10,
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          height: 800,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 35),
                const SizedBox(height: 35),
                Text(
                  content,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 35),
                ElevatedButton(
                  onPressed: onClick,
                  child: Text(
                    btnText,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 114, 33, 243)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
