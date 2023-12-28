import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(
      {super.key,
      required this.icon,
      required this.title,
      required this.screenText,
      required this.butonText,
      required this.onClick});

  final Icon icon;
  final String title;
  final String screenText;
  final String butonText;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                screenText,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    overflow: TextOverflow.clip),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  padding: const MaterialStatePropertyAll(EdgeInsets.all(16)),
                  backgroundColor: const MaterialStatePropertyAll(
                      Color.fromARGB(255, 13, 103, 15)),
                ),
                onPressed: onClick,
                child: Text(
                  butonText,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
