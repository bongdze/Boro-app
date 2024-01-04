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
                color: const Color.fromARGB(255, 102, 236, 106),
                child: const HomeScreenTop(),
              ),
              const SizedBox(height: 50),
            ],
          ),
          Positioned(
            top: 280,
            left: 40,
            right: 40,
            child: Column(
              children: [
                TextField(
                  enabled: false,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.start,
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
                ),
                const SizedBox(height: 20),
                const HomeScreenBottom()
              ],
            ),
          )
        ],
      ),
    );
  }
}
