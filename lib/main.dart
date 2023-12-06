import 'package:flutter/material.dart';
import 'package:nikezone/models/cart.dart';
import 'package:nikezone/pages/intro_pages.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Cart(),
        builder: (context, child) => const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: intro_page(),
            ));
  }
}
