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
                    Icon(Icons.account_circle_sharp),
                    SizedBox(width: 5),
                    Text('CEDRIC CHE-AZEH')
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.logout),
                    SizedBox(width: 5),
                    Text('LOGOUT')
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
                          Text('WASTE'),
                          Text('PICKUP'),
                        ],
                      ),
                      Text(
                          'Request a quick pickup or subscribe for regular pickups'),
                    ],
                  ),
                ),
                Icon(Icons.baby_changing_station, size: 200),
              ],
            ),
          )
        ],
      ),
    );
  }
}
