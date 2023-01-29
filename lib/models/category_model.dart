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

List<CategoryModel> categories = [
  CategoryModel(id: 1, name: 'day-to-day', color: Colors.amber),
  CategoryModel(id: 2, name: 'Big News', color: Colors.blue),
  CategoryModel(id: 3, name: 'Fun', color: Colors.teal),
  CategoryModel(id: 4, name: 'Games', color: Colors.teal),
  CategoryModel(id: 5, name: 'Others', color: Colors.red),
];
