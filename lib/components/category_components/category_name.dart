import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/styled_text.dart';

import '../../models/category_model.dart';
import '../../pages/home_pages/category_page.dart';

class CategoryName extends StatelessWidget {
  final CategoryModel category;
  const CategoryName({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CategoryPage(
            category: category,
          ),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(color: category.color, borderRadius: const BorderRadius.all(Radius.circular(10))),
        margin: const EdgeInsets.symmetric(vertical: 16),
        padding: const EdgeInsets.all(8),
        child: StyledText(category.name, fontSize: 18),
      ),
    );
  }
}
