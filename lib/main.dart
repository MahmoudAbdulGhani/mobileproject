import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'conversion_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unit Converter',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/length': (context) => ConversionScreen(unitType: 'Length'),
        '/weight': (context) => ConversionScreen(unitType: 'Weight'),
        // Add more routes...
      },
    );
  }
}
