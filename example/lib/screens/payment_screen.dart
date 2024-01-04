import 'package:example/screens/payment_options.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
              'Select a Saved Address',
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
      body: Stack(
        children: [
          Column(
            children: [
              RadioListTile(
                activeColor: const Color.fromARGB(255, 7, 147, 12),
                value: 'home',
                groupValue: pickUpType,
                onChanged: (value) {
                  setState(() {
                    pickUpType = value.toString();
                  });
                },
                title: const Text(
                  'Home',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                subtitle: const Text(
                  '2nd floor, Smith Complex, Entree Pilote Bonaberi Douala',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              const SizedBox(height: 15),
              RadioListTile(
                activeColor: const Color.fromARGB(255, 7, 147, 12),
                value: 'office',
                groupValue: pickUpType,
                onChanged: (value) {
                  setState(() {
                    pickUpType = value.toString();
                  });
                },
                title: const Text(
                  'Office',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                subtitle: const Text(
                  '2nd floor, Air France Rue de Trieste Bonanjo Douala',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              const SizedBox(height: 15),
              RadioListTile(
                activeColor: const Color.fromARGB(255, 7, 147, 12),
                value: 'home2',
                groupValue: pickUpType,
                onChanged: (value) {
                  setState(() {
                    pickUpType = value.toString();
                  });
                },
                title: const Text(
                  'Home2',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                subtitle: const Text(
                  '1124, Patestine Street, Jackson Tower, Near City Garden, Douala',
                  style: TextStyle(fontSize: 17),
                ),
              ),
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
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const PaymentOptionScreen(),
                    ),
                  ); //
                },
                child: const Text(
                  'CONTINUE',
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
