import 'package:calculator/buttonWidgets.dart';
import 'package:calculator/calculator_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'const.dart';

class CalculatorUIPage extends StatefulWidget {
  const CalculatorUIPage({Key key}) : super(key: key);

  @override
  _CalculatorUIPageState createState() => _CalculatorUIPageState();
}

class _CalculatorUIPageState extends State<CalculatorUIPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Center(
              child: Container(
                  height: size.height,
                  width: size.width,
                  child: Column(
                    children: <Widget>[
                      // for text field==============================================
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              height: size.height*0.08,
                              width: size.width*0.6,
                              // color: Colors.indigo,
                              child: Card(
                                color: Colors.white,
                                child: Text(
                                  "Calculator",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.sail(
                                      fontSize: size.height*0.05,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO( 85, 83, 203 ,1)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height*0.07,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: TextField(
                                decoration: InputDecoration(
                                  enabled: false,
                                ),
                                textAlign: TextAlign.right,
                                readOnly: true,
                                controller: finalcontroller,
                                style: GoogleFonts.roboto(fontSize: size.height*0.05,letterSpacing: 2.0),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: TextField(
                                decoration: InputDecoration(
                                  enabled: false,
                                  hintText: "Ans"
                                ),
                              readOnly: true,
                                 textAlign: TextAlign.right,
                                controller: controller,
                                onChanged: (val) {},
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ],
                        ),
                      ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                               margin: EdgeInsets.only(right: size.width*0.14),
                              child: ButtonWidgets(text: "D", size: size, color: Color.fromRGBO( 129, 159, 7 ,1)
                              ,onPressed: (){
                                DigitPrint("D");
                              },
                              ),
                            ),
                          ),

                      Container(
                          // color: Colors.teal.withOpacity(0.2),
                          height: MediaQuery.of(context).size.height * 0.54,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: <Widget>[
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.5,
                                  margin: EdgeInsets.all(6),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          ButtonWidgets(
                                            size: size,
                                            text: "1",
                                            color: Colors.blue,
                                            onPressed: () {
                                              DigitPrint("1");
                                            },
                                          ),
                                          ButtonWidgets(
                                              size: size,
                                              text: "2",
                                              color: Colors.redAccent,
                                              onPressed: () {
                                                DigitPrint("2");
                                              }),
                                          ButtonWidgets(
                                            size: size,
                                            text: "3",
                                            color: Colors.purple,
                                            onPressed: () {
                                              DigitPrint("3");
                                            },
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          ButtonWidgets(
                                            size: size,
                                            text: "4",
                                            color: Colors.deepOrangeAccent,
                                            onPressed: () {
                                              DigitPrint("4");
                                            },
                                          ),
                                          ButtonWidgets(
                                            size: size,
                                            text: "5",
                                            color: Colors.indigo,
                                            onPressed: () {
                                              DigitPrint("5");
                                            },
                                          ),
                                          ButtonWidgets(
                                            size: size,
                                            text: "6",
                                            color: Colors.orange.withOpacity(0.9),
                                            onPressed: () {
                                              DigitPrint("6");
                                            },
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          ButtonWidgets(
                                            size: size,
                                            text: "7",
                                            color: Colors.green,
                                            onPressed: () {
                                              DigitPrint("7");
                                            },
                                          ),
                                          ButtonWidgets(
                                            size: size,
                                            text: "8",
                                            color: Colors.deepPurple,
                                            onPressed: () {
                                              DigitPrint("8");
                                            },
                                          ),
                                          ButtonWidgets(
                                            size: size,
                                            text: "9",
                                            color: Colors.pinkAccent,
                                            onPressed: () {
                                              DigitPrint("9");
                                            },
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          ButtonWidgets(
                                            size: size,
                                            text: "0",
                                            color: Colors.brown,
                                            onPressed: () {
                                              DigitPrint("0");
                                            },
                                          ),
                                          ButtonWidgets(
                                            size: size,
                                            text: "C",
                                            color: Colors.indigoAccent,
                                            onPressed: () {
                                              DigitPrint("C");
                                            },
                                          ),
                                          ButtonWidgets(
                                            size: size,
                                            text: "=",
                                            color: Colors.deepOrangeAccent,
                                            onPressed: () {
                                              DigitPrint("=");
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                              Container(
                                width: size.width * 0.2,
                                margin: EdgeInsets.only(top: 6, bottom: 6),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    ButtonWidgets(
                                      size: size,
                                      text: "+",
                                      color: Colors.brown,
                                      onPressed: () {
                                        DigitPrint("+");
                                      },
                                    ),
                                    ButtonWidgets(
                                      size: size,
                                      text: "-",
                                      color: Colors.deepPurple,
                                      onPressed: () {
                                        DigitPrint("-");
                                      },
                                    ),
                                    
                                    ButtonWidgets(
                                      size: size,
                                      text: "X",
                                      color: Colors.teal,
                                      onPressed: () {
                                        DigitPrint("x");
                                      },
                                    ),
                                    ButtonWidgets(
                                      size: size,
                                      text: "/",
                                      color: Color.fromRGBO(  119, 41, 193  ,2),
                                      onPressed: () {
                                        DigitPrint("/");
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
