import 'package:flutter/material.dart';
import './view/pages/bottom_tab_bar_scaffold.dart';
import '../../core/models/attraction.dart';

class Attractions extends ChangeNotifier {
  /// Internal, private state of the cart.
  final List<Attraction> items = [];

  /// An unmodifiable view of the items in the cart.
  //UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

  /// Adds [item] to cart. This and [removeAll] are the only ways to modify the
  /// cart from the outside.
  void add(Attraction elem) {
    items.add(elem);
    String title = elem.title;
    print('New elem $title');
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  /// Removes all items from the cart.
  void removeAll() {
    items.clear();
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  List<Attraction> getAll() {
    return items;
  }
}
