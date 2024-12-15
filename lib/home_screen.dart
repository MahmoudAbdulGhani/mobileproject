import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Unit Converter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/length'),
              child: Text('Length Conversion'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/weight'),
              child: Text('Weight Conversion'),
            ),

          ],
        ),
      ),
    );
  }
}
