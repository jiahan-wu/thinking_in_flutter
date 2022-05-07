import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

import '../models/product.dart';
import 'product_category_row.dart';
import 'product_row.dart';

class ProductTable extends StatelessWidget {
  const ProductTable({
    Key? key,
    required this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Text("Name"),
            SizedBox(
              width: 32,
            ),
            Text("Price"),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];

              if (index == 0) {
                return Column(
                  children: [
                    ProductCategoryRow(name: product.category),
                    ProductRow(
                      name: product.name,
                      price: product.price,
                      stocked: product.stocked,
                    ),
                  ],
                );
              } else {
                final shouldShowCategoryRow =
                    product.category != products[index - 1].category;

                if (shouldShowCategoryRow) {
                  return Column(
                    children: [
                      ProductCategoryRow(name: product.category),
                      ProductRow(
                        name: product.name,
                        price: product.price,
                        stocked: product.stocked,
                      ),
                    ],
                  );
                } else {
                  return ProductRow(
                    name: product.name,
                    price: product.price,
                    stocked: product.stocked,
                  );
                }
              }
            },
          ),
        )
      ],
    );
  }
}
