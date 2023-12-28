import 'package:example/screens/sign_in_form.dart';
import 'package:example/widgets/start_screen.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [PageView].

void main() => runApp(const PageViewExampleApp());

class PageViewExampleApp extends StatelessWidget {
  const PageViewExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: PageViewExample(),
      ),
    );
  }
}

class PageViewExample extends StatefulWidget {
  const PageViewExample({super.key});

  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  final PageController controller = PageController();

  int _activePage = 0;

  
  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      StartScreen(
        icon: const Icon(Icons.delivery_dining,
            color: Color.fromARGB(255, 13, 103, 15), size: 200),
        title: 'Waste Pickup',
        screenText:
            'Book a waste pickup and our network of collectors will arrive at your doorstep or office to collect your waste',
        butonText: 'Next',
        onClick: () {},
      ),
      StartScreen(
        icon: const Icon(Icons.fire_truck,
            color: Color.fromARGB(255, 13, 103, 15), size: 200),
        title: 'Become a Collector',
        screenText:
            'Earn money by becoming a collector and we shall alert you of users requesting for pickup',
        butonText: 'Next',
        onClick: () {},
      ),
      StartScreen(
        icon: const Icon(Icons.person,
            color: Color.fromARGB(255, 13, 103, 15), size: 200),
        title: 'Get started in 30 seconds!',
        screenText:
            'Take 30 seconds to go through the registration and begin preserving our platet!',
        butonText: 'GET STARTED',
        onClick: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => const SignInScreen()),
          );
        },
      )
    ];

    return Stack(
      children: [
        PageView.builder(
          /// [PageView.scrollDirection] defaults to [Axis.horizontal].
          /// Use [Axis.vertical] to scroll vertically.
          controller: controller,
          onPageChanged: (int page) {
            setState(() {
              _activePage = page;
            });
          },
          itemCount: _pages.length,
          itemBuilder: (BuildContext context, int index) {
            return _pages[index % _pages.length];
          },
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          height: 100,
          child: Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(
                  _pages.length,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: InkWell(
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: _activePage == index
                                ? Colors.blue
                                : Colors.grey,
                          ),
                        ),
                      )),
            ),
          ),
        ),
      ],
    );
  }
}
