// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nikezone/components/shoe_tile.dart';
import 'package:nikezone/models/cart.dart';
import 'package:nikezone/models/shoe.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Successfully added!'),
              content: Text('Check your cart'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                Container(
                    padding: EdgeInsets.all(12),
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(Icons.search),
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                    'Everyone flies.. some fly longer than others',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'HOT PICKS 🔥',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      Text('See all',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue))
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  flex: 5,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 11,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        Shoe shoe = value.getShoeList()[index];
                        return ShoeTile(
                          onTap: () => addShoeToCart(shoe),
                          shoe: shoe,
                        );
                      }),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                  child: Divider(
                    color: Colors.white,
                  ),
                )
              ],
            ));
  }
}
