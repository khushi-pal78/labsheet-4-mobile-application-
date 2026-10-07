import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> products = [
      Product('Laptop', 55000),
      Product('Mobile', 25000),
      Product('Headphones', 2000),
      Product('Keyboard', 1500),
      Product('Mouse', 800),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Products')),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            Product product = products[index];

            return ListTile(
              leading: const Icon(Icons.shopping_bag),
              title: Text(product.name),
              subtitle: Text('Price: ₹${product.price.toStringAsFixed(0)}'),
            );
          },
        ),
      ),
    );
  }
}
