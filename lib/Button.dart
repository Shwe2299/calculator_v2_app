import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  Button({Key? key, this.onTap, this.lbl}) : super(key: key);
  final onTap;
  Color? bgColor;
  Color txtColor = Colors.white;
  final String? lbl;

  Button.red({this.lbl, this.onTap}) {
    bgColor = Colors.red;
  }

  Button.orange({this.lbl, this.onTap}) {
    bgColor = Colors.deepOrange;
  }

  Button.blue({this.lbl, this.onTap}) {
    bgColor = Colors.blue;
  }

  Button.grey({this.lbl, this.onTap}) {
    bgColor = Colors.grey;
    txtColor = Colors.black87;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            color: bgColor,
            child: Center(
              child: Text(
                lbl!,
                style: TextStyle(color: txtColor, fontSize: 25),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
