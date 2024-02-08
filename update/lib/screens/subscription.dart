import 'package:example/widgets/home_screen1.dart';
import 'package:example/widgets/home_screen_bottom.dart';
import 'package:flutter/material.dart';

class SubScriptionScreen extends StatelessWidget {
  const SubScriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 102, 236, 106), Colors.black12],
              stops: [0.5, 0.5]),
        ),
        child: const Column(
          children: [HomeScreenTop(), SizedBox(height: 30), HomeScreenBottom()],
        ),
      ),
    );
  }
}
