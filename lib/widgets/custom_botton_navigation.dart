import 'package:flutter/material.dart';

class CustomNavigation extends StatelessWidget {
  const CustomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.pink,
        backgroundColor: const Color.fromRGBO(55, 56, 86, 1),
        unselectedItemColor: const Color.fromRGBO(112, 112, 150, 1),
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: 'Calendario'),
          BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_rounded), label: 'Grafica'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Usuario'),
        ]);
  }
}
