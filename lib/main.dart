import 'package:flutter/material.dart';
import 'package:yepezjefferson_examen/utils/themes/general_theme.dart';
import 'package:yepezjefferson_examen/view/page_result.dart';
import 'package:yepezjefferson_examen/view/page_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: GeneralTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      title: 'Calcular Sueldo',
      //rutas
      initialRoute: '/',
      routes: {
        '/': (context) => TreeView(),
        '/result': (context) => ResultView(),
      },
    );
  }

}