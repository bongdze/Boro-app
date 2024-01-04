import 'package:example/widgets/thank_you.dart';
import 'package:flutter/material.dart';

class PaymentOptionScreen extends StatefulWidget {
  const PaymentOptionScreen({super.key});

  @override
  State<PaymentOptionScreen> createState() => _PaymentOptionScreenState();
}

class _PaymentOptionScreenState extends State<PaymentOptionScreen> {
  String? pickUpType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          title: const Column(
            children: [
              Text(
                'Choose a Payment Method',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ],
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color.fromARGB(255, 4, 74, 7),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                'MOBILE PAYMENTS',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('assets/images/momo.jpg', height: 40, width: 40),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const ThankYou(),
                        ),
                      );
                    },
                    child: const Text(
                      'MTN Mobile Money',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('assets/images/orange.png',
                      height: 40, width: 40),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const ThankYou(),
                        ),
                      );
                    },
                    child: const Text(
                      'Orange Money',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'CASH',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('assets/images/cash.jpg', height: 50, width: 50),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const ThankYou(),
                        ),
                      );
                    },
                    child: const Text(
                      'Cash on Delivery',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
