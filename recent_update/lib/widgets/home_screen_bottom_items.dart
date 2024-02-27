import 'package:example/screens/payment_screen.dart';
import 'package:flutter/material.dart';

class HomeScreenBottomGridItem extends StatelessWidget {
  const HomeScreenBottomGridItem({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final Icon icon;
  //final void Function() onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //onTap: onSelectCategory,
      borderRadius: BorderRadius.circular(16),
      child: Card(
        elevation: 10,
        child: Container(
          width: 180,
          height: 180,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              icon,
              Text(
                title,
                style: const TextStyle(
                    color: Color.fromARGB(255, 114, 232, 118), fontSize: 15),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const PaymentScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Subscribe',
                  style: TextStyle(
                      color: Color.fromARGB(255, 114, 232, 118), fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
