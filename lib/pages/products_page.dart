import 'package:flutter/material.dart';
import 'package:product_app/constants.dart';
import 'package:product_app/pages/cart_page.dart';
import 'package:product_app/providers/cart_provider.dart';
import 'package:provider/provider.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  static String id = 'product_page';

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, CartPage.id);
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          Product product = products[index];
          return ListTile(
            leading: Container(
              height: 20,
              width: 20,
              color: product.color,
            ),
            title: Text(product.name),
            trailing: Checkbox(
              value: cartProvider.items.contains(product),
              onChanged: (value) {
                if (value == true) {
                  cartProvider.add(product);
                } else {
                  cartProvider.remove(product);
                }
              },
            ),
          );
        },
      ),
    );
  }
}
