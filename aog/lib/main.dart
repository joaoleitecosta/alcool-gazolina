import 'package:aog/widgets/logo.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
    var _gasCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
             Logo(),
             TextFormField(
                controller: _gasCtrl,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                   border: InputBorder.none,
                ),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontFamily: "Big Shoulder Display",
                ),
             ),
        ],
      ),
    );
  }
}

