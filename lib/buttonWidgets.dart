import 'package:flutter/material.dart';
class ButtonWidgets extends StatefulWidget {
  final String text;
  final Size size;
  final Color color;
  final Function onPressed;
  const ButtonWidgets({Key key,@required this.text,@required this.size,@required this.color, this.onPressed }) : super(key: key);

  @override
  State<ButtonWidgets> createState() => _ButtonWidgetsState();
}

class _ButtonWidgetsState extends State<ButtonWidgets> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Text(
        this.widget.text,
        style: TextStyle(
          fontSize: this.widget.size.height*0.045,
        ),
      ),
      elevation: 10.0,
      backgroundColor: this.widget.color,
      onPressed: () {
        // if (controller.text != null) {
        //   controller.text = controller.text + "1".toString();
        //   finalcontroller.text = finalcontroller.text + "1".toString();
        //   number = controller.text;
        // } else {
        //   controller.text = "1".toString();
        //   finalcontroller.text = "1".toString();
        // }
        this.widget.onPressed();
      },
    );
  
  }
}