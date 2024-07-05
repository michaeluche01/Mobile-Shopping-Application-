import 'package:flutter/material.dart';
import 'package:static_shopping_app/model/product.dart';
import 'package:static_shopping_app/screens/order_successful.dart';

class Checkout extends StatelessWidget {
  final List<Product> checkoutItems;
  final Function(Product) removeProduct;

  Checkout({
    super.key,
    required this.checkoutItems,
    required this.removeProduct,
  });

  final List<Color> tileColors = [
    Colors.amber[50]!,
    Colors.red[100]!,
    Colors.blue[100]!
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: checkoutItems.length,
            itemBuilder: (context, index) {
              return Container(
                color: tileColors[index % tileColors.length],
                child: ListTile(
                  title: Text(checkoutItems[index].name),
                  subtitle: Text('₦${checkoutItems[index].price}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () {
                      removeProduct(checkoutItems[index]);
                    },
                  ),
                ),
              );
            },
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OrderSuccessful()),
            );
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
          child: Text(
            'Place Order',
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
        ),
        const SizedBox(height: 60),
      ],
    );
  }
}
