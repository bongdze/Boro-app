import 'package:example/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ThankYou extends StatelessWidget {
  const ThankYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(width: 50),
        title: const Text(
          'Payment Successful',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          textAlign: TextAlign.center,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 4, 74, 7),
        //automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                Icons.fire_truck_sharp,
                size: 250,
                color: Colors.green,
              ),
              SizedBox(height: 20),
              Text(
                'Garbage collection is on the way!',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15),
              Text(
                'Your payment has been successfully processed',
                style: TextStyle(color: Colors.grey, fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'THANK YOU',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
                textAlign: TextAlign.center,
              )
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: 70,
            child: Container(
              color: const Color.fromARGB(255, 23, 218, 29),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => const HomeScreen(),
                  ));
                },
                child: const Text(
                  'BACK TO HOME',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
