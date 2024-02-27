//import 'package:example/widgets/third_blog_item.dart';
import 'package:example/screens/first_blog_details_screen.dart';
//import 'package:example/widgets/first_blog_items.dart';
import 'package:flutter/material.dart';

class BlogSection extends StatefulWidget {
  const BlogSection({super.key});

  @override
  State<BlogSection> createState() {
    return _BlogSection();
  }
}

class _BlogSection extends State<BlogSection> {
  final PageController controller = PageController();

  int _activePage = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      FirstItemsDetailsScreen(
        title: 'Introduction to contamination',
        content: 'Content 1 in here',
        btnText: 'Next',
        onClick: () {
          if (controller.hasClients) {
            controller.nextPage(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn);
          }
        },
      ),
      FirstItemsDetailsScreen(
        title: 'Empty & Clean',
        content: 'Content 2 in here',
        btnText: 'Next',
        onClick: () {
          if (controller.hasClients) {
            controller.nextPage(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn);
          }
        },
      ),
      FirstItemsDetailsScreen(
        title: 'Wish-cycling',
        content: 'Content 3 in here',
        btnText: 'Get Certified',
        onClick: () {},
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.close),
        ),
        title: const Text(''),
      ),
      body: Stack(
        children: [
          PageView.builder(
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
            height: 50,
            child: Container(
              color: Colors.greenAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                    pages.length,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                            child: CircleAvatar(
                              radius: 4,
                              backgroundColor: _activePage == index
                                  ? Colors.blue
                                  : Colors.black12,
                            ),
                          ),
                        )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
