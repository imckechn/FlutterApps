import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './view/pages/bottom_tab_bar_scaffold.dart';
import 'core/models/attraction.dart';
import 'core/models/scheduler_modifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    // Adding ProviderScope enables Riverpod for the entire project
    ProviderScope(child: MyApp()),
  );
}
//=> runApp(
// ChangeNotifierProvider(
//   create: (context) => ItemNotifier(),
//   child: MyApp(
//   ),
// ),
//);

/// Providers are declared globally and specify how to create a state
final counterProvider = StateNotifierProvider<ItemNotifier, List<Attraction>>(
    (ref) => ItemNotifier());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lab Six Part A",
      home: BottomTabBarScaffold(),
    );
  }
}
