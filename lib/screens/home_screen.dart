import 'package:example/widgets/home_screen1.dart';
import 'package:example/widgets/home_screen_bottom.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                color: const Color.fromARGB(255, 114, 232, 118),
                child: const HomeScreenTop(),
              ),
              const SizedBox(height: 50),
              const HomeScreenBottom()
            ],
          ),
          Positioned(
              top: 280,
              left: 50,
              right: 50,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  ),
                  filled: true,
                  hintText: 'Instant Pickup',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  fillColor: Colors.white,
                ),
              ))
        ],
      ),
    );
  }
}
