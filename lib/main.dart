import 'package:flutter/material.dart';
import 'package:flutter_design/screens/basic_design.dart';
import 'package:flutter_design/screens/home_screen.dart';
import 'package:flutter_design/screens/scroll_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        theme: ThemeData.dark(),
        initialRoute: 'home_screen',
        routes: {
          'basic_design': (_) => const BasicDesignScreen(),
          'scroll_screen': (_) => const ScrollScreen(),
          'home_screen': (_) => const HomeScreen(),
        });
  }
}
