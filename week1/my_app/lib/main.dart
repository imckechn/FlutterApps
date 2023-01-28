import 'package:flutter/material.dart';
import 'buttons.dart';
import 'greyButton.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ); // MaterialApp
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userInput = '';
  var answer = '';

  // Array of button
  final List<String> buttons = [
    'C',
    '/',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    '*',
    '1',
    '2',
    '3',
    '-',
    '0',
    '=',
    '+',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    print("width = ");
    print(width);

    return Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ), //AppBar
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.centerRight,
                      color: Colors.white,
                      child: Text(
                        userInput,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      alignment: Alignment.center,
                      child: Text(
                        "5 +",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
                child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 5, left: 7, right: 7, top: 5),
                      child: Container(
                        height: 100,
                        width: width * 0.70,
                        child: Expanded(
                          flex: 3,
                          child: MyButton(
                            buttontapped: () {
                              setState(() {
                                userInput += buttons[0];
                              });
                            },
                            buttonText: "Clear",
                            color: Colors.blue[50],
                            textColor: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 5, left: 7, right: 7, top: 5),
                      child: Container(
                        height: 100,
                        width: width * 0.21,
                        child: Expanded(
                          flex: 3,
                          child: GreyButton(
                            buttontapped: () {
                              setState(() {
                                userInput += buttons[0];
                              });
                            },
                            buttonText: "/",
                            color: Colors.blue[50],
                            textColor: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 5, left: 7, right: 7, top: 5),
                      child: Container(
                        height: 100,
                        width: width * 0.21,
                        child: Expanded(
                          flex: 3,
                          child: MyButton(
                            buttontapped: () {
                              setState(() {
                                userInput += buttons[0];
                              });
                            },
                            buttonText: "7",
                            color: Colors.blue[50],
                            textColor: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 5, left: 7, right: 7, top: 5),
                      child: Container(
                        height: 100,
                        width: width * 0.21,
                        child: Expanded(
                          flex: 3,
                          child: MyButton(
                            buttontapped: () {
                              setState(() {
                                userInput += buttons[0];
                              });
                            },
                            buttonText: "8",
                            color: Colors.blue[50],
                            textColor: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 5, left: 7, right: 7, top: 5),
                      child: Container(
                        height: 100,
                        width: width * 0.21,
                        child: Expanded(
                          flex: 3,
                          child: MyButton(
                            buttontapped: () {
                              setState(() {
                                userInput += buttons[0];
                              });
                            },
                            buttonText: "9",
                            color: Colors.blue[50],
                            textColor: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 5, left: 7, right: 7, top: 5),
                      child: Container(
                        height: 100,
                        width: width * 0.21,
                        child: Expanded(
                          flex: 3,
                          child: GreyButton(
                            buttontapped: () {
                              setState(() {
                                userInput += buttons[0];
                              });
                            },
                            buttonText: "*",
                            color: Colors.blue[50],
                            textColor: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 5, left: 7, right: 7, top: 5),
                      child: Container(
                        height: 100,
                        width: width * 0.21,
                        child: Expanded(
                          flex: 3,
                          child: MyButton(
                            buttontapped: () {
                              setState(() {
                                userInput += buttons[0];
                              });
                            },
                            buttonText: "4",
                            color: Colors.blue[50],
                            textColor: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 5, left: 7, right: 7, top: 5),
                      child: Container(
                        height: 100,
                        width: width * 0.21,
                        child: Expanded(
                          flex: 3,
                          child: MyButton(
                            buttontapped: () {
                              setState(() {
                                userInput += buttons[0];
                              });
                            },
                            buttonText: "5",
                            color: Colors.blue[50],
                            textColor: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 5, left: 7, right: 7, top: 5),
                      child: Container(
                        height: 100,
                        width: width * 0.21,
                        child: Expanded(
                          flex: 3,
                          child: MyButton(
                            buttontapped: () {
                              setState(() {
                                userInput += buttons[0];
                              });
                            },
                            buttonText: "6",
                            color: Colors.blue[50],
                            textColor: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 5, left: 7, right: 7, top: 5),
                      child: Container(
                        height: 100,
                        width: width * 0.21,
                        child: Expanded(
                          flex: 3,
                          child: GreyButton(
                            buttontapped: () {
                              setState(() {
                                userInput += buttons[0];
                              });
                            },
                            buttonText: "-",
                            color: Colors.blue[50],
                            textColor: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 5, left: 7, right: 7, top: 5),
                      child: Container(
                        height: 100,
                        width: width * 0.21,
                        child: Expanded(
                          flex: 3,
                          child: MyButton(
                            buttontapped: () {
                              setState(() {
                                userInput += buttons[0];
                              });
                            },
                            buttonText: "1",
                            color: Colors.blue[50],
                            textColor: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 5, left: 7, right: 7, top: 5),
                      child: Container(
                        height: 100,
                        width: width * 0.21,
                        child: Expanded(
                          flex: 3,
                          child: MyButton(
                            buttontapped: () {
                              setState(() {
                                userInput += buttons[0];
                              });
                            },
                            buttonText: "2",
                            color: Colors.blue[50],
                            textColor: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 5, left: 7, right: 7, top: 5),
                      child: Container(
                        height: 100,
                        width: width * 0.21,
                        child: Expanded(
                          flex: 3,
                          child: MyButton(
                            buttontapped: () {
                              setState(() {
                                userInput += buttons[0];
                              });
                            },
                            buttonText: "3",
                            color: Colors.blue[50],
                            textColor: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 5, left: 7, right: 7, top: 5),
                      child: Container(
                        height: 100,
                        width: width * 0.21,
                        child: Expanded(
                          flex: 3,
                          child: GreyButton(
                            buttontapped: () {
                              setState(() {
                                userInput += buttons[0];
                              });
                            },
                            buttonText: "+",
                            color: Colors.grey,
                            textColor: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 5, left: 7, right: 7, top: 5),
                      child: Container(
                        height: 100,
                        width: width * 0.21,
                        child: Expanded(
                          flex: 3,
                          child: MyButton(
                            buttontapped: () {
                              setState(() {
                                userInput += buttons[0];
                              });
                            },
                            buttonText: "0",
                            color: Colors.blue[50],
                            textColor: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 5, left: 7, right: 7, top: 5),
                      child: Container(
                        height: 100,
                        width: width * 0.71,
                        child: Expanded(
                          flex: 3,
                          child: MyButton(
                            buttontapped: () {
                              setState(() {
                                userInput += buttons[0];
                              });
                            },
                            buttonText: "=",
                            color: Colors.blue[50],
                            textColor: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ) // GridView.builder
                ),
          ),
        ],
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }

// function to calculate the input operation
  void equalPressed() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('*', '*');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }
}
