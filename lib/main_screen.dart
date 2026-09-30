import 'package:flutter/material.dart';
import 'package:fono_app/views/about/about.dart';
import 'package:fono_app/views/home/home.dart';
import 'package:fono_app/views/profile/profile.dart';

class MainScreenView extends StatefulWidget {
  const MainScreenView({super.key});

  @override
  State<MainScreenView> createState() => _MainScreenViewState();
}

class _MainScreenViewState extends State<MainScreenView> {
  int _currentIndex = 1;

  final List<Widget> _pages = const [
    ProfilePageView(),
    HomePageView(),
    AboutPageView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            activeIcon: Icon(Icons.person_outlined),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            activeIcon: Icon(Icons.map_outlined),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            activeIcon: Icon(Icons.info_outlined),
            label: 'Sobre',
          ),
        ],
      ),
    );
  }
}
