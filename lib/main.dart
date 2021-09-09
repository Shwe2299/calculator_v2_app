import 'package:calculator_v2_app/GridGenerator.dart';
import 'package:calculator_v2_app/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalcTwo(),
    );
  }
}

class CalcTwo extends StatefulWidget {
  const CalcTwo({Key? key}) : super(key: key);

  @override
  _CalcTwoState createState() => _CalcTwoState();
}

class _CalcTwoState extends State<CalcTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Observer(
              builder: (_) => Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        calculator.userInput,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.centerRight,
                      child: Text(
                        calculator.answer,
                        style: TextStyle(fontSize: 70),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          // Expanded(
          //   flex: 2,
          //   child: Container(
          //     child: Center(
          //       child: Text('Answer'),
          //     ),
          //   ),
          // ),
          Expanded(
            flex: 2,
            child: GridView.builder(
              itemCount: calcGrid.length,
              //how many items in a row
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemBuilder: (BuildContext context, int index) {
                return calcGrid[index];
              },
            ),
          )
        ],
      ),
    );
  }
}
