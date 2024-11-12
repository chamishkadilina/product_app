import 'package:flutter/material.dart';
import 'package:product_app/constants.dart';
import 'package:product_app/providers/cart_provider.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  static String id = 'cart_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('cart'),
        centerTitle: true,
      ),
      body: Consumer<CartProvider>(
        builder: (context, value, child) {
          return Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.80,
                child: ListView.builder(
                  itemCount: value.items.length,
                  itemBuilder: (context, index) {
                    Product product = value.items[index];
                    return ListTile(
                      title: Text(
                        product.name,
                      ),
                    );
                  },
                ),
              ),
              Text('Total Price : \$${value.getCartTotal()}'),
            ],
          );
        },
      ),
    );
  }
}
