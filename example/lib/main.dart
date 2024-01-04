import 'package:example/screens/sign_in_form.dart';
import 'package:example/widgets/start_screen.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [PageView].

void main() => runApp(const BoroApp());

class BoroApp extends StatelessWidget {
  const BoroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: LandingPage(),
      ),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final PageController controller = PageController();

  int _activePage = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      StartScreen(
        icon: const Icon(Icons.delivery_dining,
            color: Color.fromARGB(255, 13, 103, 15), size: 200),
        title: 'Waste Pickup',
        screenText:
            'Book a waste pickup and our network of collectors will arrive at your doorstep or office to collect your waste',
        butonText: 'Next',
        onClick: () {
          if (controller.hasClients) {
            controller.nextPage(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn);
          }
        },
      ),
      StartScreen(
        icon: const Icon(Icons.fire_truck,
            color: Color.fromARGB(255, 13, 103, 15), size: 200),
        title: 'Become a Collector',
        screenText:
            'Earn money by becoming a collector and we shall alert you of users requesting for pickup',
        butonText: 'Next',
        onClick: () {
          if (controller.hasClients) {
            controller.nextPage(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn);
          }
        },
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
          itemCount: pages.length,
          itemBuilder: (BuildContext context, int index) {
            return pages[index % pages.length];
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
                  pages.length,
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
