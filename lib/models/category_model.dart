import 'package:flutter/material.dart';

class Category {
  final String name;
  final Color color;
  final int id;

  Category({
    required this.id,
    required this.color,
    required this.name,
  });
}

List<Category> categories = [
  Category(id: 1, name: 'day-to-day', color: Colors.amber),
  Category(id: 2, name: 'Big News', color: Colors.blue),
  Category(id: 3, name: 'Fun', color: Colors.teal),
  Category(id: 4, name: 'Games', color: Colors.teal),
  Category(id: 5, name: 'Others', color: Colors.red),
];
