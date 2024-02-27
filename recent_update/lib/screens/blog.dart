//import 'package:example/widgets/blog_section.dart';
import 'package:example/widgets/first_blog_items.dart';
import 'package:example/widgets/second_blog_items.dart';
import 'package:example/widgets/third_blog_item.dart';
import 'package:flutter/material.dart';

class BlogPost extends StatelessWidget {
  const BlogPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
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
        child: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'The Discovery Zone',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Text(
                  "We've been taught to recycle. Now its time to learn to recycle correctly. Re-learn recycling basics and discover which materials are negatively affecting your local recyling program's performance.",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 40),
                Text(
                  'Recycling Fundamentals',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Text(
                  'Be a more confident recycler by learning about contamination and wish-cycling. Earn a badge!',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FirstItems(label: 'Introduction to contamination'),
                      FirstItems(label: 'Empty & Clean'),
                      FirstItems(label: 'Wish-cycling')
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  'Misunderstood Materials',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Text(
                  'Ten items many people get wrong. Find out the right way to recycle or dispose of them to earn a badge!',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SecondItems(
                          label: 'Dairy and Juice Cartons',
                          subLabel: 'Recycling'),
                      SecondItems(
                          label: 'Plastic Bottles, Jars and Jugs',
                          subLabel: 'Recycling'),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Blog',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                ThirdItem(
                  title: 'Why Recycling Matters',
                  color1: Color.fromARGB(255, 153, 50, 171),
                  color2: Color.fromARGB(255, 53, 14, 121),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
