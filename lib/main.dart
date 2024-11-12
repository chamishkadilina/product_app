import 'package:flutter/material.dart';
import 'package:product_app/pages/cart_page.dart';
import 'package:product_app/pages/products_page.dart';
import 'package:product_app/providers/cart_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ProductsPage(),
      routes: {
        ProductsPage.id: (context) => const ProductsPage(),
        CartPage.id: (context) => const CartPage(),
      },
    );
  }
}
