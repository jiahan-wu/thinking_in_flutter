import 'package:flutter/material.dart';

class ProductRow extends StatelessWidget {
  const ProductRow({
    Key? key,
    required this.name,
    required this.price,
    required this.stocked,
  }) : super(key: key);

  final String name;
  final String price;
  final bool stocked;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(stocked ? Icons.check : Icons.close),
        Text(name),
        const SizedBox(
          width: 32,
        ),
        Text(price)
      ],
    );
  }
}
