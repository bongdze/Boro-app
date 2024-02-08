import 'package:example/screens/faq_form_screen.dart';
import 'package:example/widgets/faq_items.dart';
import 'package:flutter/material.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void openFaqForm() {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) => const FaqFormScreen()),
      );
    }

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 102, 236, 106), Colors.black12],
              stops: [0.1, 0.9]),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.account_circle_sharp,
                          color: Colors.green),
                    ),
                    const SizedBox(width: 5),
                    const Icon(Icons.notifications_none)
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'How can we help you?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                FaqItems(
                  openFaqItem: openFaqForm,
                  icon: const Icon(Icons.location_on),
                  text: 'I want to report a missed pick-up',
                ),
                const SizedBox(height: 10),
                FaqItems(
                  openFaqItem: openFaqForm,
                  icon: const Icon(Icons.shopping_cart),
                  text: 'My cart is damaged',
                ),
                const SizedBox(height: 10),
                FaqItems(
                  openFaqItem: openFaqForm,
                  icon: const Icon(Icons.notifications_none),
                  text: "I'm not getting pick-up reminders",
                ),
                const SizedBox(height: 10),
                FaqItems(
                  openFaqItem: openFaqForm,
                  icon: const Icon(Icons.wrong_location),
                  text: "This app contains wrong information",
                ),
                const SizedBox(height: 10),
                FaqItems(
                  openFaqItem: openFaqForm,
                  icon: const Icon(Icons.error),
                  text: "I have a technical problem with this app",
                ),
                const SizedBox(height: 10),
                FaqItems(
                  openFaqItem: openFaqForm,
                  icon: const Icon(Icons.question_mark_rounded),
                  text: "I have a different problem",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
