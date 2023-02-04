import 'package:flutter/material.dart';

class CategoryModel {
  final String name;
  final Color color;
  final int id;

  CategoryModel({
    required this.id,
    required this.color,
    required this.name,
  });
}

final List<CategoryModel> categories = [
  CategoryModel(id: 0, name: 'day-to-day', color: Colors.amber),
  CategoryModel(id: 1, name: 'Big News', color: Colors.blue),
  CategoryModel(id: 2, name: 'Fun', color: Colors.teal),
  CategoryModel(id: 3, name: 'Games', color: Colors.teal),
  CategoryModel(id: 4, name: 'Others', color: Colors.red),
];
