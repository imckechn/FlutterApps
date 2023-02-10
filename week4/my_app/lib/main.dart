import 'package:flutter/material.dart';
import './view/pages/bottom_tab_bar_scaffold.dart';
import '../core/models/attraction.dart';
import 'attractions_notifier.dart';

Attractions attracNotifier = Attractions();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ian McKechnie Flutter App",
      home: BottomTabBarScaffold(),
    );
  }
}
