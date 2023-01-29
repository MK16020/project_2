import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/category_name.dart';
import 'package:flutter_project_2/models/category_model.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

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
