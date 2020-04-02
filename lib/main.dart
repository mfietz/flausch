import 'package:flausch/ui/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flausch',
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        accentColor: Colors.blue,
      ),
      home: HomeScreen(title: 'aww'),
    );
  }
}
