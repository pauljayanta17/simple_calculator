import 'package:calculator/buttonWidgets.dart';
import 'package:calculator/calculator_functions.dart';
import 'package:flutter/material.dart';
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
        body: Center(
          child: Container(
              height: size.height,
              width: size.width,
              padding: EdgeInsets.only(bottom: size.height*0.03),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.deepOrangeAccent.withOpacity(0.4),
                    Colors.deepPurple,
                    // Colors.purple.withOpacity(0.6),
                    // Colors.indigoAccent.withOpacity(0.5)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  // stops: [0,2],
                  
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // for text field==============================================
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all( size.height*0.01 ),
                      // color: Colors.indigo.withOpacity(0.6),
                      // padding:
                      //     EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            // height: size.height * 0.1,
                            // width: size.width * 0.6,
                            // color: Colors.indigo,
                            child: Text(
                              "Calculator",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                  fontSize: size.height * 0.05,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
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
                              style: GoogleFonts.roboto(
                                  fontSize: size.height * 0.05,
                                  letterSpacing: 2.0),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: TextField(
                              decoration: InputDecoration(
                                  enabled: false, hintText: "Ans"),
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
                  ),
                  // Align(
                  //   alignment: Alignment.topRight,
                  //   child: Container(
                  //      margin: EdgeInsets.only(right: size.width*0.14),
                  //     child: ButtonWidgets(text: "D", size: size, color: Color.fromRGBO( 129, 159, 7 ,1)
                  //     ,onPressed: (){
                  //       DigitPrint("D");
                  //     },
                  //     ),
                  //   ),
                  // ),
                 
                  Container(
                    // color: Colors.teal.withOpacity(0.2),
                    // height: MediaQuery.of(context).size.height * 0.6,
                    // width: MediaQuery.of(context).size.width,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runSpacing: size.height*0.02,
                      spacing: size.width*0.015,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        
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
                        ButtonWidgets(
                          size: size,
                          text: "+",
                          color: Colors.brown,
                          onPressed: () {
                            DigitPrint("+");
                          },
                        ),
                        // SizedBox(
                        //   height: size.height * 0.01,
                        // ),
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
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        ButtonWidgets(
                          size: size,
                          text: "-",
                          color: Colors.deepPurple,
                          onPressed: () {
                            DigitPrint("-");
                          },
                        ),
                        // SizedBox(
                        //   height: size.height * 0.01,
                        // ),
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
                        ButtonWidgets(
                          size: size,
                          text: "X",
                          color: Colors.teal,
                          onPressed: () {
                            DigitPrint("x");
                          },
                        ),
                        // SizedBox(
                        //   height: size.height * 0.01,
                        // ),
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
                        ButtonWidgets(
                          size: size,
                          text: "/",
                          color: Color.fromRGBO(119, 41, 193, 2),
                          onPressed: () {
                            DigitPrint("/");
                          },
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
