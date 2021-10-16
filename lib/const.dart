import 'package:flutter/material.dart';
TextEditingController controller = TextEditingController();
TextEditingController finalcontroller = TextEditingController();
String  memory="C",temp="",pre="",s1="",exp;
bool isFirst=true;
List<String> operators = ["+","-","x","/"];
List<String> all=[];
double number=0, totalno=0, ans = 0,ansmul = 1;
int i=0;
int count=0;
//For Delete digit or operator
String tempStr;