import 'package:flutter/material.dart';

class PostsWidget extends StatelessWidget {
  const PostsWidget({super.key});

  static List<String> posts = [
    '1.png',
    '2.png',
    '3.png',
    '4.png',
    '5.png',
    '6.png',
    '7.png',
    '8.png',
    '9.png'
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: posts.length,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100,
          mainAxisExtent: 100,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/${posts[index]}')),
            ),
          );
        });
  }
}
