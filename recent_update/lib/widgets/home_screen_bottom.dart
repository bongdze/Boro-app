//import 'package:example/screens/payment_screen.dart';
import 'package:example/widgets/home_screen_bottom_items.dart';
import 'package:flutter/material.dart';

class HomeScreenBottom extends StatelessWidget {
  const HomeScreenBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeScreenBottomGridItem(
              title: 'Weekly Pickup',
              icon: Icon(
                Icons.delivery_dining,
                color: Colors.green,
                size: 70,
              ),
            ),
            SizedBox(width: 30),
            HomeScreenBottomGridItem(
              title: 'Daily Pickup',
              icon: Icon(
                Icons.delivery_dining,
                color: Colors.green,
                size: 70,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeScreenBottomGridItem(
              title: 'Monthly Pickup',
              icon: Icon(
                Icons.delivery_dining,
                color: Colors.green,
                size: 70,
              ),
            ),
          ],
        )
      ],
    );
    /*GridView(
      padding: const EdgeInsets.all(24),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        HomeScreenBottomGridItem(
          title: 'Weekly Pickup',
          icon: const Icon(Icons.delivery_dining),
          onSelectCategory: () {
            _selectCategory(context);
          },
        ),
        HomeScreenBottomGridItem(
          title: 'Daily Pickup',
          icon: const Icon(Icons.delivery_dining),
          onSelectCategory: () {
            _selectCategory(context);
          },
        ),
        HomeScreenBottomGridItem(
          title: 'Monthly Pickup',
          icon: const Icon(Icons.delivery_dining),
          onSelectCategory: () {
            _selectCategory(context);
          },
        ),
        HomeScreenBottomGridItem(
          title: 'Instant Pickup',
          icon: const Icon(Icons.delivery_dining),
          onSelectCategory: () {
            _selectCategory(context);
          },
        ),
      ],
    );*/
  }
}
