import 'package:calculator/const.dart';

DigitPrint(String s) {
  if (s == "=") {
    print("= start here");
    all.insert(i, temp);

    exp = (count >= 2) ? "err" : "noerr";
    if (exp == "err") controller.text = "Invalid";
    //primary check if the expression is right or wrong

    if (exp != "err") {
      all.forEach((element) {
        print(element);
        if (element == "+" ||
            element == "-" ||
            element == "x" ||
            element == "/") {
          memory = element;
          count++;
        } else if (memory == "C") {
          ans = double.parse(element);
        } else {
          count = 0;
          number = double.parse(element);
          if (memory == "+") {
            ans = ans + number;
            memory = "";
          } else if (memory == "-") {
            ans = ans - number;
            memory = "";
          } else if (memory == "x") {
            ans = ans * number;
            memory = "";
          } else if (memory == "/") {
            ans = ans / number;
            memory = "";
          }
        }
        print("Ans = $ans");
      });

      if (memory == "+") {
        ans = ans + number;
      } else if (memory == "-") {
        ans = ans - number;
      } else if (memory == "x") {
        ans = ans * number;
      } else if (memory == "/") {
        ans = ans / number;
      }
      print(ans);
      controller.text = ans.toString();
    }
  } else if (s == "C") {
    all.clear();
    finalcontroller.clear();
    i = 0;
    ans = 0;
    temp = "";
    memory = "C";
    controller.clear();
    count = 0;
  } else if (s == "+" || s == "-" || s == "x" || s == "/") {
    if (temp != "") {
      all.insert(i, temp);
      i++;
    }

    if (i > 0 && all[i - 1] != s) {
      all.insert(i, s);
      i++;
      finalcontroller.text = finalcontroller.text + s;
    }
    print(all);
    temp = "";
    count++;
  } else {
    temp = temp + s;
    count = 0;
    finalcontroller.text = finalcontroller.text + s;
    // number = double.parse(temp);
  }

  tempStr = finalcontroller.text;
  //  s1=s;
}




/*


if (s == "=") {
    print("= start here");
    all.insert(i, temp);

    exp = (count >= 2) ? "err" : "noerr";
    if (exp == "err") controller.text = "Invalid";
    //primary check if the expression is right or wrong

    if (exp != "err") {
      all.forEach((element) {
        print(element);
        if (element == "+" ||
            element == "-" ||
            element == "x" ||
            element == "/") {
          memory = element;
          count++;
        } else if (memory == "C") {
          ans = double.parse(element);
        } else {
          count = 0;
          number = double.parse(element);
          if (memory == "+") {
            ans = ans + number;
            memory = "";
          } else if (memory == "-") {
            ans = ans - number;
            memory = "";
          } else if (memory == "x") {
            ans = ans * number;
            memory = "";
          } else if (memory == "/") {
            ans = ans / number;
            memory = "";
          }
        }
        print("Ans = $ans");
      });

      if (memory == "+") {
        ans = ans + number;
      } else if (memory == "-") {
        ans = ans - number;
      } else if (memory == "x") {
        ans = ans * number;
      } else if (memory == "/") {
        ans = ans / number;
      }
      print(ans);
      controller.text = ans.toString();
    }
  } else if (s == "C") {
    all.clear();
    finalcontroller.clear();
    i = 0;
    ans = 0;
    temp = "";
    memory = "C";
    controller.clear();
    count = 0;
  } else if (s == "+" || s == "-" || s == "x" || s == "/") {
    if (temp != "") {
      all.insert(i, temp);
      i++;
    }

    if (i > 0 && all[i - 1] != s) {
      all.insert(i, s);
      i++;
      finalcontroller.text = finalcontroller.text + s;
    }
    print(all);
    temp = "";
    count++;
  } else {
    temp = temp + s;
    count = 0;
    finalcontroller.text = finalcontroller.text + s;
    // number = double.parse(temp);
  }

  tempStr = finalcontroller.text;
  //  s1=s;



*/