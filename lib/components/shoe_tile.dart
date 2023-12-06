// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nikezone/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 25, bottom: 20),
        width: 500,
        // height: 500,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // image of item
            Image.asset(shoe.imagePath),
            // details of items
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(shoe.description,
                  style: TextStyle(color: Colors.grey[700])),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        shoe.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '\$ ' + shoe.price,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                      onTap: onTap,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12)),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ))
                ],
              ),
            )
          ],
        ));
  }
}
