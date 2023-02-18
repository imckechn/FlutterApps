import 'dart:collection';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../models/attraction.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../view/pages/attraction_page.dart';

class ItemNotifier extends StateNotifier<List<Attraction>> {
  //static final ItemNotifier _instance = ItemNotifier._internal();
  //factory ItemNotifier() => _instance;
  //ItemNotifier._internal();

  final List<Attraction> _attractions = <Attraction>[];
  int _size = 0;

  //ItemNotifier(super.state);
  ItemNotifier() : super([]);

  get length => _attractions.length;

  Attraction operator [](int index) => _attractions[index];

  List<Attraction> get attractions => List.from(_attractions);

  List<Attraction> getItems() => UnmodifiableListView(_attractions);
  int getSize() => _size;

  void add(Attraction attraction) {
    _attractions.add(attraction);
    state = List.from(_attractions);
    //_size++;
    //notifyListeners();
  }

  void delete(int index) {
    _attractions.removeAt(index);
    state = List.from(_attractions);
    //_size--;
    //notifyListeners();
  }

  void deleteLast() {
    _attractions.removeLast();
    state = List.from(_attractions);
    //_size--;
    //notifyListeners();
  }

  String getTitle(int index) {
    return _attractions[index].title;
  }

  String getAddress(int index) {
    return _attractions[index].address;
  }

  String getDescription(int index) {
    return _attractions[index].description;
  }

  String getImage(int index) {
    return _attractions[index].imageURL;
  }

  int getLength() {
    return _attractions.length;
  }

  bool isEmpty() {
    if (_attractions.length == 0) {
      return true;
    }
    return false;
  }
}
