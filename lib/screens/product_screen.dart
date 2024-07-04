import 'package:flutter/material.dart';
import 'package:static_shopping_app/model/product.dart';

class ProductList extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Iphone X', price: 230000.00),
    Product(name: 'Iphone 13 Pro Max', price: 799000.99),
    Product(name: 'HP Desktop 3in1 Suite', price: 1500000.00),
  ];

  final Function(Product) addProduct;

  ProductList({super.key, required this.addProduct});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(products[index].name),
          subtitle: Text('₦${products[index].price}'),
          trailing: IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              addProduct(products[index]);
            },
          ),
        );
      },
    );
  }
}
