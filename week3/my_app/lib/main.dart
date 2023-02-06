

import 'package:flutter/material.dart';
import './view/pages/bottom_tab_bar_scaffold.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lab Six Part A",
      home: BottomTabBarScaffold(),
    );
  }
}
