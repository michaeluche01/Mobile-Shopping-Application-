import 'package:flutter/material.dart';
import 'package:static_shopping_app/model/product.dart';

class ProductList extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'HP Desktop 3in1 Suite', price: 1500000.00),
    Product(name: 'Apple MacBook Pro 16"', price: 2500000.00),
    Product(name: 'Dell XPS 13', price: 1800000.00),
    Product(name: 'Lenovo ThinkPad X1 Carbon', price: 1700000.00),
    Product(name: 'Microsoft Surface Laptop 4', price: 1600000.00),
    Product(name: 'Asus ROG Zephyrus G14', price: 1450000.00),
    Product(name: 'Samsung Galaxy Tab S7', price: 700000.00),
    Product(name: 'Apple iPad Pro 12.9"', price: 1300000.00),
    Product(name: 'Sony WH-1000XM4 Headphones', price: 350000.00),
    Product(name: 'Bose QuietComfort 35 II', price: 320000.00),
    Product(name: 'JBL Charge 4 Bluetooth Speaker', price: 150000.00),
    Product(name: 'Amazon Echo Dot (4th Gen)', price: 50000.00),
    Product(name: 'Google Nest Hub Max', price: 90000.00),
    Product(name: 'Apple Watch Series 6', price: 400000.00),
    Product(name: 'Samsung Galaxy Watch 3', price: 350000.00),
    Product(name: 'Fitbit Charge 4', price: 150000.00),
    Product(name: 'Garmin Forerunner 945', price: 450000.00),
    Product(name: 'Nikon D850 DSLR Camera', price: 3000000.00),
    Product(name: 'Canon EOS R5 Mirrorless Camera', price: 3200000.00),
    Product(name: 'GoPro HERO9 Black', price: 400000.00),
    Product(name: 'DJI Mavic Air 2 Drone', price: 800000.00),
    Product(name: 'Sony PlayStation 5', price: 450000.00),
    Product(name: 'Xbox Series X', price: 480000.00),
    Product(name: 'Nintendo Switch', price: 250000.00),
    Product(name: 'Logitech MX Master 3 Mouse', price: 80000.00),
  ];

  final Function(Product) addProduct;

  ProductList({super.key, required this.addProduct});
  final List<Color> tileColors = [
    Colors.amber[50]!,
    Colors.red[100]!,
    Colors.blue[100]!
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Container(
          color: tileColors[index % tileColors.length],
          child: ListTile(
            title: Text(products[index].name),
            subtitle: Text('₦${products[index].price}'),
            trailing: IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                addProduct(products[index]);
              },
            ),
          ),
        );
      },
    );
  }
}
