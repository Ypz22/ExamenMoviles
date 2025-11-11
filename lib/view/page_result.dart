import 'dart:ffi';

import 'package:flutter/material.dart';

class ResultView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final result = ModalRoute.of(context)!.settings.arguments as double;
    final resultString = "El total es \$${result.toStringAsFixed(2)}";

    return Scaffold(
        appBar: AppBar(
          title: Text('Resultado'),
        ),
        body: Center(
          child: Text(
            resultString,
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
        )
    );
  }

}
