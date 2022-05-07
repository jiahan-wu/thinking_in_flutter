import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.inStockOnly,
    required this.filterTextOnChanged,
    required this.inStockOnlyOnChanged,
  }) : super(key: key);

  final bool inStockOnly;
  final ValueChanged<String> filterTextOnChanged;
  final ValueChanged<bool> inStockOnlyOnChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(
            hintText: "Search...",
          ),
          onChanged: (value) {
            filterTextOnChanged(value);
          },
        ),
        Row(
          children: [
            Checkbox(
              value: inStockOnly,
              onChanged: (value) {
                inStockOnlyOnChanged(value ?? false);
              },
            ),
            const Text("Only show products in stock")
          ],
        )
      ],
    );
  }
}
