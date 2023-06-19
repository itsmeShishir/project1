import 'package:flutter/material.dart';

class CategoryController extends StatefulWidget {
  const CategoryController({super.key});

  @override
  State<CategoryController> createState() => _CategoryControllerState();
}

class _CategoryControllerState extends State<CategoryController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          width: double.infinity,
          child: Text(
            "Categorys",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.amber,
              fontSize: 28,
            ),
          ),
        ),
      ],
    );
  }
}
