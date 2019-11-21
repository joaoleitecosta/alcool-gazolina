
import 'package:aog/widgets/input.dart';
import 'package:aog/widgets/loading-button.widget.dart';
import 'package:aog/widgets/logo-widget.dart';
import 'package:aog/widgets/submit-form.dart';
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
    var _alcCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          SubmitForm(
            alcCtrl: _alcCtrl,
            gasCtrl: _gasCtrl,
            busy: false,
            submitFunc: (){},
            ),
        ],
      ),
    );
  }
}

