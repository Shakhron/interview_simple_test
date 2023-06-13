import 'package:flutter/material.dart';

class InterestsWidget extends StatelessWidget {
  const InterestsWidget({super.key});

  static List<String> interests = [
    'Музыка',
    'Спорт',
    'Путешествия',
    'Развлечения',
    'Кино',
    'Книги'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Интересы',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10),
        GridView.builder(
            itemCount: interests.length,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 120,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              mainAxisExtent: 45,
            ),
            itemBuilder: (context, index) {
              return Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(interests[index],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 255, 149, 0)))),
              );
            }),
      ],
    );
  }
}
