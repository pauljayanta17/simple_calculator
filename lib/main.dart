import 'package:calculator/calculator_UI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My Calculator",
        color: Colors.cyan,
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData.dark(),
        home: mycalculator());
  }
}

class mycalculator extends StatefulWidget {
  @override
  _mycalculatorState createState() => _mycalculatorState();
}

class _mycalculatorState extends State<mycalculator> {
  String c;
  String number, totalno, ans = "0", memory, ansmul = "1";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: CalculatorUIPage()
    );
  }
}





