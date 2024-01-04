import 'package:flutter/material.dart';

class HomeScreenTop extends StatelessWidget {
  const HomeScreenTop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.account_circle_sharp, color: Colors.green),
                    SizedBox(width: 5),
                    Text(
                      'CEDRIC CHE-AZEH',
                      style: TextStyle(color: Colors.green, fontSize: 15),
                    )
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.lock, color: Colors.green),
                    SizedBox(width: 5),
                    Text(
                      'LOGOUT',
                      style: TextStyle(color: Colors.green, fontSize: 15),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
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
                  size: 200,
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
