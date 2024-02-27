import 'package:example/screens/blog.dart';
import 'package:example/widgets/calendar.dart';
//import 'package:example/widgets/home_screen1.dart';
//import 'package:example/widgets/home_screen_bottom.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 102, 236, 106), Colors.black12],
              stops: [0.5, 0.5]),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton.icon(
                            icon: const Icon(Icons.lock, color: Colors.green),
                            onPressed: () {},
                            label: const Text(
                              'LOGOUT',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 15),
                            ))
                      ],
                    )
                  ],
                ),
                //HomeScreenTop(),
                const SizedBox(height: 10),
                const Text(
                  'Pick a Schedule',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 20),
                const CalendarSelect(),
                const SizedBox(height: 20),
                const Text(
                  'Discover',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Introduction to contamination',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Text(
                  'The words Reduce, Reuse and Recycle are familiar to a lot of people. Some might remember learning about these concepts in elementary school, participating in school initiatives to reduce environmental impact, and cleaning up the schoolyard of litter a few times a year. How can it be the the case then, that recycling programs around the world are in crises and in danger of collaspe ',
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.justify,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const BlogPost(),
                        ),
                      );
                    },
                    child: const Text(
                      'Read More.....',
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Color.fromARGB(255, 33, 61, 243)),
                    ))
                //HomeScreenBottom(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
