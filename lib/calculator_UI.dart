import 'package:calculator/buttonWidgets.dart';
import 'package:calculator/calculator_functions.dart';
import 'package:flutter/material.dart';
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
        // appBar: AppBar(
        //   title: Text("Welcome"),
        //   centerTitle: true,
        //   backgroundColor: Colors.indigo,
        //   automaticallyImplyLeading: false,
        //   elevation: 10.0,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(20),
        //   ),
        // ),
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
                              height: 70,
                              width: size.width,
                              // color: Colors.indigo,
                              child: Card(
                                color: Colors.white,
                                child: Text(
                                  "Calculator",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 45,
                                      color: Colors.deepPurpleAccent),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            TextField(
                              enabled: false,
                              decoration: InputDecoration(
                                disabledBorder: OutlineInputBorder(),
                              ),
                              controller: finalcontroller,
                              style: TextStyle(fontSize: 30),
                            ),
                            TextField(
                              enabled: false,
                              decoration: InputDecoration(
                                disabledBorder: OutlineInputBorder(),
                              ),
                              textDirection: TextDirection.ltr,
                              controller: controller,
                              onChanged: (val) {},
                              style: TextStyle(fontSize: 30),
                            ),
                          ],
                        ),
                      ),

                      Container(
                          color: Colors.teal.withOpacity(0.2),
                          height: MediaQuery.of(context).size.height * 0.53,
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
                                            color: Colors.amber,
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
                                            color: Colors.orange,
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
                                      color: Colors.red,
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
