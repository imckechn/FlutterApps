import 'dart:convert';
import 'dart:io';

class Fruit {
  final String fruitName;
  final String imageName;
  final String color;
  final bool isFavorite;

  Fruit(
      {required this.fruitName,
      required this.imageName,
      required this.color,
      required this.isFavorite});

  factory Fruit.fromJson(Map<String, dynamic> json) {
    return Fruit(
      fruitName: json['fruit name'],
      imageName: json['image name'],
      color: json['color'],
      isFavorite: json['isFavourite'],
    );
  }
}