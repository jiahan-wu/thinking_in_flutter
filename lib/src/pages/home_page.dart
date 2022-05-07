import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/filterable_product_table.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FilterableProductTable(
        products: Product.all,
      ),
    );
  }
}
