import 'package:aog/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'loading-button.widget.dart';

class SubmitForm extends StatelessWidget {
    var gasCtrl = new MoneyMaskedTextController();
    var alcCtrl = new MoneyMaskedTextController();
    var busy = false;
    Function submitFunc;

    SubmitForm({
      @required this.gasCtrl,
      @required this.alcCtrl,
      @required this.busy,
      @required this.submitFunc,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30
          ) ,
          child: Input(
            label: "Gasolina",
            ctrl: gasCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: "Alcool",
            ctrl: alcCtrl,
          ),
          ),
          LoadingButton(
            busy: busy,
            func: submitFunc,
            invert: false,
            text: "CALCULAR",
          ) 
      ],
      
    );
  }
}