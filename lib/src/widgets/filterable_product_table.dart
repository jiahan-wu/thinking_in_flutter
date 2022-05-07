import 'package:flutter/material.dart';

import '../models/product.dart';
import 'product_table.dart';
import 'search_bar.dart';

class FilterableProductTable extends StatefulWidget {
  const FilterableProductTable({
    Key? key,
    required this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  State<FilterableProductTable> createState() => _FilterableProductTableState();
}

class _FilterableProductTableState extends State<FilterableProductTable> {
  var filterText = "";
  var inStockOnly = false;

  List<Product> get _products {
    var products = widget.products;

    if (filterText.isNotEmpty) {
      products = products
          .where((element) => element.name.contains(filterText))
          .toList();
    }

    if (inStockOnly) {
      products = products.where((element) => element.stocked).toList();
    }

    return products;
  }

  filterTextChanged(String value) {
    setState(() {
      filterText = value;
    });
  }

  inStockOnlyChanged(bool value) {
    setState(() {
      inStockOnly = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBar(
          inStockOnly: inStockOnly,
          filterTextOnChanged: filterTextChanged,
          inStockOnlyOnChanged: inStockOnlyChanged,
        ),
        Expanded(
          child: ProductTable(
            products: _products,
          ),
        ),
      ],
    );
  }
}
