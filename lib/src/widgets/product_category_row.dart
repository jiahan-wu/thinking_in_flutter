import 'package:flutter/material.dart';

class ProductCategoryRow extends StatelessWidget {
  const ProductCategoryRow({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
