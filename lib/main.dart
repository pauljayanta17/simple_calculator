import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My Calculator",
        color: Colors.cyan,
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData.dark(),
        home: mycalculator()
    );
  }
}



class mycalculator extends StatefulWidget {
  @override
  _mycalculatorState createState() => _mycalculatorState();
}
class _mycalculatorState extends State<mycalculator> {

  String c;

  final TextEditingController controller=TextEditingController();
  final TextEditingController finalcontroller=TextEditingController();
  String number,totalno,ans="0",memory,ansmul="1";
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Welcome"),
              centerTitle: true,
              backgroundColor: Colors.indigo,
              automaticallyImplyLeading: false,
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),



            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(

                      children: <Widget>[

                        // for text field==============================================
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                height: 70,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.indigo,
                                child: Card(
                                  color: Colors.white
                                  ,
                                  child: Text("Calculator",textAlign: TextAlign.center,style: TextStyle(fontSize: 45,color: Colors.deepPurpleAccent),),
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
                                textDirection: TextDirection.rtl,
                                onChanged: (val)
                                {
                                  finalcontroller.text=controller.text;
                                },
                                style: TextStyle(
                                    fontSize: 30
                                ),
                              ),
                              TextField(
                                enabled: false,
                                decoration: InputDecoration(
                                disabledBorder: OutlineInputBorder(),
                                ),
                                textDirection: TextDirection.ltr,
                                controller: controller,
                                onChanged: (val)
                                {

                                },
                                style: TextStyle(
                                    fontSize: 30
                                ),
                              ),
                            ],
                          ),
                        ),





                        Container(
                          height: MediaQuery.of(context).size.height/2.1,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width/1.5,

                                margin: EdgeInsets.all(6),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                       FloatingActionButton(
                                          child: Text("1",style: TextStyle(fontSize: 22,),),
                                          elevation: 10.0,
                                          backgroundColor: Colors.blue,
                                          onPressed: (){
                                            if(controller.text!=null)
                                              {
                                                controller.text=controller.text+"1".toString();
                                                finalcontroller.text=finalcontroller.text+"1".toString();
                                                number=controller.text;

                                              }
                                            else{
                                             controller.text="1".toString();
                                             finalcontroller.text="1".toString();
                                            }

                                          },
                                        ),
                                        FloatingActionButton(
                                          child: Text("2",style: TextStyle(fontSize: 22,),),
                                          elevation: 10.0,
                                          backgroundColor: Colors.redAccent,
                                          onPressed: (){
                                            if(controller.text!=null)
                                            {
                                              controller.text=controller.text+"2".toString();
                                              finalcontroller.text=finalcontroller.text+"2".toString();
                                              number=controller.text;


                                            }
                                            else{
                                              controller.text="2".toString();
                                              finalcontroller.text="2".toString();
                                            }
                                          },
                                        ),
                                        FloatingActionButton(
                                          child: Text("3",style: TextStyle(fontSize: 22,),),
                                          elevation: 10.0,
                                          backgroundColor: Colors.purple,
                                          onPressed: (){
                                            if(controller.text!=null)
                                            {
                                              controller.text=controller.text+"3".toString();
                                              finalcontroller.text=finalcontroller.text+"3".toString();
                                              number=controller.text;


                                            }
                                            else{
                                              controller.text="3".toString();
                                              finalcontroller.text="3".toString();
                                            }
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        FloatingActionButton(
                                          child: Text("4",style: TextStyle(fontSize: 22,),),
                                          elevation: 10.0,
                                          backgroundColor: Colors.amber,
                                          onPressed: (){
                                            if(controller.text!=null)
                                            {
                                              controller.text=controller.text+"4".toString();
                                              finalcontroller.text=finalcontroller.text+"4".toString();
                                              number=controller.text;
                                            }
                                            else{
                                              controller.text="4".toString();
                                              finalcontroller.text="4".toString();
                                            }
                                          },
                                        ),
                                        FloatingActionButton(
                                          child: Text("5",style: TextStyle(fontSize: 22,),),
                                          elevation: 10.0,
                                          backgroundColor: Colors.black,
                                          onPressed: (){
                                            if(controller.text!=null)
                                            {
                                              controller.text=controller.text+"5".toString();
                                              finalcontroller.text=finalcontroller.text+"5".toString();
                                              number=controller.text;
                                            }
                                            else{
                                              controller.text="5".toString();
                                              finalcontroller.text="5".toString();
                                            }
                                          },
                                        ),
                                        FloatingActionButton(
                                          child: Text("6",style: TextStyle(fontSize: 22,),),
                                          elevation: 10.0,
                                          backgroundColor: Colors.orange,
                                          onPressed: (){
                                            if(controller.text!=null)
                                            {
                                              controller.text=controller.text+"6".toString();
                                              finalcontroller.text=finalcontroller.text+"6".toString();
                                              number=controller.text;

                                            }
                                            else{
                                              controller.text="6".toString();
                                              finalcontroller.text="6".toString();
                                            }
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        FloatingActionButton(
                                          child: Text("7",style: TextStyle(fontSize: 22,),),
                                          elevation: 10.0,
                                          backgroundColor: Colors.green,
                                          onPressed: (){
                                            if(controller.text!=null)
                                            {
                                              controller.text=controller.text+"7".toString();
                                              finalcontroller.text=finalcontroller.text+"7".toString();
                                              number=controller.text;

                                            }
                                            else{
                                              controller.text="7".toString();
                                              finalcontroller.text="7".toString();
                                            }
                                          },
                                        ),
                                        FloatingActionButton(
                                          child: Text("8",style: TextStyle(fontSize: 22,),),
                                          elevation: 10.0,
                                          backgroundColor: Colors.deepPurple,
                                          onPressed: (){
                                            if(controller.text!=null)
                                            {
                                              controller.text=controller.text+"8".toString();
                                              finalcontroller.text=finalcontroller.text+"8".toString();
                                              number=controller.text;

                                            }
                                            else{
                                              controller.text="8".toString();
                                              finalcontroller.text="8".toString();
                                            }
                                          },
                                        ),
                                        FloatingActionButton(
                                          child: Text("9",style: TextStyle(fontSize: 22,),),
                                          elevation: 10.0,
                                          backgroundColor: Colors.pinkAccent,
                                          onPressed: (){
                                            if(controller.text!=null)
                                            {
                                              controller.text=controller.text+"9".toString();
                                              finalcontroller.text=finalcontroller.text+"9".toString();
                                              number=controller.text;

                                            }
                                            else{
                                              controller.text="9".toString();
                                              finalcontroller.text="9".toString();
                                            }
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        FloatingActionButton(
                                          child: Text("0",style: TextStyle(fontSize: 22,),),
                                          elevation: 10.0,
                                          backgroundColor: Colors.brown,
                                          onPressed: (){
                                            if(controller.text!=null)
                                            {
                                              controller.text=controller.text+"0".toString();
                                              finalcontroller.text=finalcontroller.text+"0".toString();
                                              number=controller.text;

                                            }
                                            else{
                                              controller.text="0".toString();
                                              finalcontroller.text="0".toString();
                                            }
                                          },
                                        ),
                                        FloatingActionButton(
                                          child: Text("CLEAR"),
                                          backgroundColor: Colors.indigoAccent,
                                          onPressed: (){
                                            controller.clear();
                                            finalcontroller.clear();
                                          },
                                        ),
                                        FloatingActionButton(
                                          child: Text("=",style: TextStyle(fontSize: 22,),),
                                          elevation: 10.0,
                                          backgroundColor: Colors.deepOrangeAccent,
                                          onPressed: (){
                                            setState(() {
                                              switch(c)
                                              {
                                                case '+':     memory=controller.text.toString();
                                                              var num=int.parse(memory);
                                                              ans=(num+int.parse(ans)).toString();
                                                              controller.text=ans;
                                                              ans="0";
                                                              break;

                                                case '-':
                                                            memory=controller.text.toString();
                                                            var num=int.parse(memory);
                                                            ans=(int.parse(ans)-num).toString();
                                                            controller.text=ans;
                                                            ans="0";
                                                            break;
                                                case 'x':
                                                            memory=controller.text.toString();
                                                            var num=int.parse(memory);
                                                            ansmul=(num*int.parse(ansmul)).toString();
                                                            controller.text=ansmul;
                                                            ansmul="1";
                                                            break;


                                                case '/':  memory=controller.text.toString();
                                                            var num=double.parse(memory);
                                                            ansmul=(double.parse(ansmul)/num).toString();
                                                            controller.text=ansmul;
                                                            ansmul="1";
                                                            break;

                                              }



                                            });


                                          },
                                        ),
                                      ],
                                    ),

                                  ],
                                )
                              ),




                              Container(
                                width: MediaQuery.of(context).size.width/3.6,
                                margin: EdgeInsets.only(top: 6,bottom: 6),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    FloatingActionButton(
                                      child:Text("+",style: TextStyle(fontSize: 40),),
                                      backgroundColor: Colors.brown,
                                      elevation: 10,
                                      onPressed: (){
                                        setState(() {
                                          c="+";
                                          finalcontroller.text=finalcontroller.text+"+".toString();
                                          memory=controller.text.toString();
                                          var num=int.parse(memory);
                                          ans=(num+int.parse(ans)).toString();
                                          controller.text=ans;
                                          print(memory);
                                          controller.clear();
                                        });

                                      },
                                    ),

                                    FloatingActionButton(
                                      child:Text("-",style: TextStyle(fontSize: 50),),
                                      backgroundColor: Colors.deepPurple,
                                      elevation: 10,
                                      onPressed: (){
                                        setState(() {
                                          c="-";
                                          memory=controller.text.toString();
                                          var num=int.parse(memory);
                                          if(ans=="0")
                                            {
                                              ans=(num-int.parse(ans)).toString();
                                            }
                                          else
                                            {
                                              ans=(int.parse(ans)-num).toString();
                                            }
                                          print(ans);
                                          finalcontroller.text=finalcontroller.text+"-".toString();
                                          controller.clear();
                                        });

                                      },
                                    ),

                                    FloatingActionButton(
                                      child: Text("X",style: TextStyle(fontSize: 30),),
                                      backgroundColor: Colors.teal,
                                      elevation: 10,
                                      onPressed: (){
                                        setState(() {
                                          c="x";
                                          finalcontroller.text=finalcontroller.text+"x".toString();
                                          memory=controller.text.toString();
                                          var num=int.parse(memory);
                                          ansmul=(num*int.parse(ansmul)).toString();
                                          controller.text=ansmul;
                                          print(memory);
                                          controller.clear();
                                        });

                                      },
                                    ),

                                    FloatingActionButton(
                                      child:Text("/",style: TextStyle(fontSize: 30),),
                                      backgroundColor: Colors.black,
                                      elevation: 10,
                                      onPressed: (){
                                        setState(() {
                                          c="/";
                                          finalcontroller.text=finalcontroller.text+"/".toString();
                                          memory=controller.text.toString();
                                          var num=double.parse(memory);
                                          ansmul=(num/double.parse(ansmul)).toString();
                                          controller.text=ansmul;
                                          print(memory);
                                          controller.clear();
                                        });

                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ),
                      ],
                    )
                  ),
                ),
              ),
            ),


          ),
      ),
    );

  }
}




