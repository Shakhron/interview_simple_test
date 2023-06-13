import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Flexible(
        child: Text(
      'Я позитивный человек. Люблю путешествовать и кушать вкусно. Всегда доступен для общения',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    ));
  }
}
