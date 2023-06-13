import 'package:flutter/material.dart';

class MainInfoWidget extends StatelessWidget {
  const MainInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 15),
          child: SizedBox(
            height: 67,
            width: 67,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar.png'),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Flexible(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Айбек Темиров',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                'Кыргызстан, Бишкек',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
        Container(
          height: 41,
          width: 46,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/rating.png')),
          ),
          child: const Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 4),
              child: Text(
                '9,7',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
