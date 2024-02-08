import 'package:flutter/material.dart';

class HomeScreenTop extends StatelessWidget {
  const HomeScreenTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'WASTE ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            'PICKUP',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.green),
                          ),
                        ],
                      ),
                      Text(
                        'Request a quick pickup or subscribe for regular pickups',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.baby_changing_station,
                  size: 100,
                  color: Colors.green,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
