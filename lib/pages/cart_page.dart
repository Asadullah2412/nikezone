// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nikezone/components/cart_item.dart';
import 'package:nikezone/models/cart.dart';
import 'package:nikezone/models/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'My Cart',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                      child: ListView.builder(
                          itemCount: value.getUserCart().length,
                          itemBuilder: (context, index) {
                            Shoe individualShoe = value.getUserCart()[index];

                            return CartItem(shoe: individualShoe);
                          }))
                ],
              ),
            ));
  }
}
