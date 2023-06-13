import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intern/main_screen.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({super.key});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBuilder: (context, index) {
        _selectedIndex = index;

        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(child: SizedBox());
              },
            );
          case 1:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(child: SizedBox());
              },
            );
          case 2:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(child: SizedBox());
              },
            );
          case 3:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: MainScreen(),
                );
              },
            );
          case 4:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(child: SizedBox());
              },
            );
          default:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(child: SizedBox());
              },
            );
        }
      },
      tabBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/main.svg',
              color:
                  _selectedIndex == 0 ? Color.fromARGB(255, 255, 149, 0) : null,
            ),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/category.svg',
              color:
                  _selectedIndex == 1 ? Color.fromARGB(255, 255, 149, 0) : null,
            ),
            label: 'Категории',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/message.svg',
              color:
                  _selectedIndex == 2 ? Color.fromARGB(255, 255, 149, 0) : null,
            ),
            label: 'Чат',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/profile.svg',
              color: _selectedIndex == 3
                  ? Color.fromARGB(255, 255, 149, 0)
                  : Colors.black,
            ),
            label: 'Профиль',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/menu.svg',
              color:
                  _selectedIndex == 4 ? Color.fromARGB(255, 255, 149, 0) : null,
            ),
            label: 'Меню',
          ),
        ],
        currentIndex: _selectedIndex,
        activeColor: Color.fromARGB(255, 255, 149, 0),
        onTap: _onItemTapped,
      ),
    );
  }
}
