import 'package:flutter/material.dart';

import 'components/all_category.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: PopularProducts(),
    );
  }
}
