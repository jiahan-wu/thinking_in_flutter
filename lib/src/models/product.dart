class Product {
  static List<Product> all = [
    Product(
        category: "Sporting Goods",
        price: "\$49.99",
        stocked: true,
        name: "Football"),
    Product(
        category: "Sporting Goods",
        price: "\$9.99",
        stocked: true,
        name: "Baseball"),
    Product(
        category: "Sporting Goods",
        price: "\$29.99",
        stocked: false,
        name: "Basketball"),
    Product(
        category: "Electronics",
        price: "\$99.99",
        stocked: true,
        name: "iPod Touch"),
    Product(
        category: "Electronics",
        price: "\$399.99",
        stocked: false,
        name: "iPhone 5"),
    Product(
        category: "Electronics",
        price: "\$199.99",
        stocked: true,
        name: "Nexus 7")
  ];

  Product({
    required this.category,
    required this.name,
    required this.price,
    required this.stocked,
  });

  final String category;
  final String name;
  final String price;
  final bool stocked;
}
