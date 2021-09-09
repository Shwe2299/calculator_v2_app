import 'package:math_expressions/math_expressions.dart';
import 'package:mobx/mobx.dart';
//Include generated file
part 'calc_state.g.dart';

class CalcState extends _CalcState with _$CalcState {
  CalcState();
}

abstract class _CalcState with Store {
  Parser parser = Parser();
  ContextModel cm = ContextModel();
  @observable
  late String userInput = "";

  // late String? ans2 = "";

  @observable
  late String answer = "";

  @action
  void clean() {
    this.userInput = "";
    this.answer = "";
  }

  @action
  void delete() {
    this.userInput = this.userInput.substring(0, this.userInput.length - 1);
  }

  @action
  void addUserInput(String inputChar) {
    this.userInput += inputChar;
  }

  @action
  void percent() {
    Expression exp = parser.parse(this.userInput);
    this.answer = (exp.evaluate(EvaluationType.REAL, cm) / 100).toString();
    this.userInput = this.answer;
  }

  @action
  void result() {
    Expression exp = parser.parse(this.userInput);
    this.answer = exp.evaluate(EvaluationType.REAL, cm).toString();
    this.userInput = this.answer;
  }

  // void plusMinus(String inputChar) {}
}
