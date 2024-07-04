import 'package:flutter/material.dart';
import 'package:static_shopping_app/model/product.dart';
import 'package:static_shopping_app/screens/checkout.dart';
import 'package:static_shopping_app/screens/product_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Product> _checkoutItems = [];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void addProduct(Product product) {
    setState(() {
      _checkoutItems.add(product);
    });
  }

  void removeProduct(Product product) {
    setState(() {
      _checkoutItems.remove(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gadgets Store',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: _selectedIndex == 0
          ? ProductList(addProduct: addProduct)
          : Checkout(
              checkoutItems: _checkoutItems,
              removeProduct: removeProduct,
            ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Checkout',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
