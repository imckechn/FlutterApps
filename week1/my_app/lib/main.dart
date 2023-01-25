// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ian McKechnie Flutter App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Ian McKechnie'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ian McKechnie'),
        ),
        body: ListView(children: [
          // ignore: prefer_const_literals_to_create_immutables
          Text('Answer'),
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    width: 100,
                  )
                  FloatingActionButton(
                      onPressed: () => {print("Clear")},
                      child: const Text('Clear')),
                      width: 
                ),
                Expanded(
                  flex: 1,
                  child: FloatingActionButton(
                      onPressed: () => {print("Divide")},
                      child: const Text('/')),
                ),
              ],
            ),
            Row(
              children: [
                FloatingActionButton(
                    onPressed: () => {print("7")}, child: const Text('7')),
                FloatingActionButton(
                    onPressed: () => {print("8")}, child: const Text('8')),
                FloatingActionButton(
                    onPressed: () => {print("9")}, child: const Text('9')),
                FloatingActionButton(
                    onPressed: () => {print("*")}, child: const Text('*')),
              ],
            ),
            Row(
              children: [
                FloatingActionButton(
                    onPressed: () => {print("4")}, child: const Text('4')),
                FloatingActionButton(
                    onPressed: () => {print("5")}, child: const Text('5')),
                FloatingActionButton(
                    onPressed: () => {print("6")}, child: const Text('6')),
                FloatingActionButton(
                    onPressed: () => {print("-")}, child: const Text('-')),
              ],
            ),
            Row(
              children: [
                FloatingActionButton(
                    onPressed: () => {print("1")}, child: const Text('1')),
                FloatingActionButton(
                    onPressed: () => {print("2")}, child: const Text('2')),
                FloatingActionButton(
                    onPressed: () => {print("3")}, child: const Text('3')),
                FloatingActionButton(
                    onPressed: () => {print("+")}, child: const Text('+')),
              ],
            ),
            Row(
              children: [
                FloatingActionButton(
                    onPressed: () => {print("0")}, child: const Text('0')),
                FloatingActionButton(
                    onPressed: () => {print("=")}, child: const Text('=')),
              ],
            ),
          ])
        ]));
  }
}
