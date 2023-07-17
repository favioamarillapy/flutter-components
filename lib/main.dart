import 'package:flutter/material.dart';

import 'package:flutter_components/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/listview-screen': (context) => const ListViewScreen(),
        '/alert-screen': (context) => const AlertScreen(),
        '/card-screen': (context) => const CardScreen(),
      },
    );
  }
}
