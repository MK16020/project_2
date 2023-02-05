// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/category_components/category_name.dart';
import 'package:flutter_project_2/models/category_model.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var category in categories)
            Row(
              children: [
                CategoryName(category: category),
                const SizedBox(width: 16),
              ],
            ),
        ],
      ),
    );
  }
}
/**
 * SingleChildScrollView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var category in categories)
            Row(
              children: [
                CategoryName(category: category),
                const SizedBox(width: 16),
              ],
            ),
        ],
      ),
    );
 */