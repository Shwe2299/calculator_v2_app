import 'package:calculator_v2_app/Button.dart';
import 'package:calculator_v2_app/global.dart';

//invoke actions
var calcGrid = [
  Button.orange(
    lbl: "AC",
    onTap: () => calculator.clean(),
  ),
  Button.red(
    lbl: "DEL",
    onTap: () => calculator.delete(),
  ),
  Button.blue(
    lbl: "%",
    onTap: () {
      calculator.percent();
    },
  ),
  Button.blue(
    lbl: "÷",
    onTap: () {
      calculator.addUserInput("/");
    },
  ),
  Button.grey(
    lbl: "7",
    onTap: () => calculator.addUserInput("7"),
  ),
  Button.grey(
    lbl: "8",
    onTap: () => calculator.addUserInput("8"),
  ),
  Button.grey(
    lbl: "9",
    onTap: () => calculator.addUserInput("9"),
  ),
  Button.blue(
    lbl: "x",
    onTap: () => calculator.addUserInput("*"),
  ),
  Button.grey(
    lbl: "4",
    onTap: () => calculator.addUserInput("4"),
  ),
  Button.grey(
    lbl: "5",
    onTap: () => calculator.addUserInput("5"),
  ),
  Button.grey(
    lbl: "6",
    onTap: () => calculator.addUserInput("6"),
  ),
  Button.blue(
    lbl: "-",
    onTap: () => calculator.addUserInput("-"),
  ),
  Button.grey(
    lbl: "1",
    onTap: () => calculator.addUserInput("1"),
  ),
  Button.grey(
    lbl: "2",
    onTap: () => calculator.addUserInput("2"),
  ),
  Button.grey(
    lbl: "3",
    onTap: () => calculator.addUserInput("3"),
  ),
  Button.blue(
    lbl: "+",
    onTap: () => calculator.addUserInput("+"),
  ),
  Button.blue(
    lbl: "±",
    onTap: () => calculator.addUserInput("-"),
  ),
  Button.grey(
    lbl: "0",
    onTap: () => calculator.addUserInput("0"),
  ),
  Button.grey(
    lbl: ".",
    onTap: () => calculator.addUserInput("."),
  ),
  Button.blue(
    lbl: "=",
    onTap: () => calculator.result(),
  ),
];
