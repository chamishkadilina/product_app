import 'package:flutter/material.dart';

class Product {
  final int id;
  final String name;
  final int price;
  final Color color;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.color,
  });
}

final List<Product> products = [
  Product(
    id: 1,
    name: 'laptop',
    price: 999,
    color: Colors.red,
  ),
  Product(
    id: 2,
    name: 'Phone',
    price: 699,
    color: Colors.redAccent,
  ),
  Product(
    id: 3,
    name: '4K TV',
    price: 799,
    color: Colors.yellow,
  ),
  Product(
    id: 4,
    name: 'PS6',
    price: 1299,
    color: Colors.yellowAccent,
  ),
  Product(
    id: 5,
    name: 'JBL',
    price: 299,
    color: Colors.green,
  ),
  Product(
    id: 6,
    name: 'fridge',
    price: 1499,
    color: Colors.greenAccent,
  ),
  Product(
    id: 7,
    name: 'GoPro',
    price: 899,
    color: Colors.blue,
  ),
  Product(
    id: 8,
    name: 'bag',
    price: 999,
    color: Colors.blueAccent,
  ),
  Product(
    id: 9,
    name: 'watch',
    price: 399,
    color: Colors.pink,
  ),
  Product(
    id: 10,
    name: 'airpod',
    price: 199,
    color: Colors.pinkAccent,
  ),
];
