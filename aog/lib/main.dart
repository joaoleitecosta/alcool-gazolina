
import 'package:aog/pages/home.page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alcool ou Gazolina',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}
