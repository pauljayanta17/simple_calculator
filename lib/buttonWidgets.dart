import 'package:flutter/material.dart';

class ButtonWidgets extends StatefulWidget {
  final String text;
  final Size size;
  final Color color;
  final Function onPressed;
  const ButtonWidgets(
      {Key key,
      @required this.text,
      @required this.size,
      @required this.color,
      this.onPressed})
      : super(key: key);

  @override
  State<ButtonWidgets> createState() => _ButtonWidgetsState();
}

class _ButtonWidgetsState extends State<ButtonWidgets> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        alignment: Alignment.center,
        elevation: 0,
        fixedSize: Size(
          this.widget.size.width * 0.21,
          this.widget.size.height * 0.1,
        ),
        onSurface: Colors.white,
        maximumSize: Size(
          this.widget.size.width * 0.21,
          this.widget.size.height * 0.1,
        ),
        minimumSize: Size(
          this.widget.size.width * 0.17,
          this.widget.size.height * 0.06,
        ),
        // shadowColor: Colors.green,
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(30)
        )
      ),
      child: Container(
        height: this.widget.size.height * 0.1,
        width: this.widget.size.width * 0.21,
        alignment: Alignment.center,
        child: Text(
          this.widget.text,
          style: TextStyle(
              fontSize: this.widget.size.height * 0.045, color: Colors.white),
        ),
      ),
      onPressed: () {
        // if (controller.text != null) {
        //   controller.text = controller.text + "1".toString();
        //   finalcontroller.text = finalcontroller.text + "1".toString();
        //   number = controller.text;
        // } else {
        //   controller.text = "1".toString();
        //   finalcontroller.text = "1".toString();
        // }
        setState(() {
          this.widget.onPressed();
        });
      },
    );
  }
}
