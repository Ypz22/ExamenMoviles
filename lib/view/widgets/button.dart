import 'package:flutter/material.dart';

class ButtonCalculate extends StatelessWidget{
  final VoidCallback onPressed;

  ButtonCalculate({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text("Calcular")
    );
  }
}