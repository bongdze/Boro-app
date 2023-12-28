import 'package:example/widgets/home_screen_bottom_items.dart';
import 'package:flutter/material.dart';

class HomeScreenBottom extends StatelessWidget {
  const HomeScreenBottom({
    super.key,
  });

  void _selectCategory(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const Text('data'),
      ),
    ); // Navigator.push(context, route)
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeScreenBottomGridItem(
              title: 'Weekly Pickup',
              icon: const Icon(
                Icons.delivery_dining,
                color: Colors.green,
                size: 70,
              ),
              onSelectCategory: () {
                _selectCategory(context);
              },
            ),
            const SizedBox(width: 30),
            HomeScreenBottomGridItem(
              title: 'Daily Pickup',
              icon: const Icon(
                Icons.delivery_dining,
                color: Colors.green,
                size: 70,
              ),
              onSelectCategory: () {
                _selectCategory(context);
              },
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeScreenBottomGridItem(
              title: 'Monthly Pickup',
              icon: const Icon(
                Icons.delivery_dining,
                color: Colors.green,
                size: 70,
              ),
              onSelectCategory: () {
                _selectCategory(context);
              },
            ),
            const SizedBox(width: 30),
            HomeScreenBottomGridItem(
              title: 'Instant Pickup',
              icon: const Icon(
                Icons.delivery_dining,
                color: Colors.green,
                size: 70,
              ),
              onSelectCategory: () {
                _selectCategory(context);
              },
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
