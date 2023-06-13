import 'package:flutter/material.dart';
import 'package:intern/widgets/interests_widget.dart';
import 'package:intern/widgets/main_info_widget.dart';
import 'package:intern/widgets/posts_widget.dart';
import 'package:intern/widgets/status_widget.dart';
import 'package:intern/widgets/subscribers_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Мой профиль',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: const [
          MainInfoWidget(),
          SizedBox(height: 16),
          SubscribersWidget(),
          SizedBox(height: 12),
          StatusWidget(),
          SizedBox(height: 16),
          InterestsWidget(),
          SizedBox(height: 16),
          PostsWidget(),
        ],
      ),
    );
  }
}
