import 'package:flutter/material.dart';

class SubscribersWidget extends StatelessWidget {
  const SubscribersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  '87',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Постов',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const VerticalDivider(
            width: 43,
            color: Colors.black,
          ),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  '870',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Подписчики',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const VerticalDivider(
            width: 43,
            color: Colors.black,
          ),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  '370',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Друзья',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
