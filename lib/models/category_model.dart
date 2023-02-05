import 'package:flutter/material.dart';

class CategoryModel {
  final String name;
  final Color color;
  final int id;
  final String imageUrl;

  CategoryModel({
    required this.id,
    required this.color,
    required this.name,
    required this.imageUrl,
  });
}

final List<CategoryModel> categories = [
  CategoryModel(id: 0, name: 'day-to-day', color: Colors.amber, imageUrl: 'assets/images/cate1.png'),
  CategoryModel(id: 1, name: 'Big News', color: Colors.blue, imageUrl: 'assets/images/cate2.png'),
  CategoryModel(id: 2, name: 'Fun', color: Colors.teal, imageUrl: 'assets/images/cate3.png'),
  CategoryModel(id: 3, name: 'Games', color: Colors.teal, imageUrl: 'assets/images/cate4.png'),
  CategoryModel(id: 4, name: 'Others', color: Colors.red, imageUrl: 'assets/images/cate5.png'),
];
