import 'package:flutter/material.dart';
import 'package:nikezone/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'ZION 3',
        price: '300',
        description:
            'Stay low and contained, explode skyward, with a cushioned return to earth. ',
        imagePath: 'lib/images/shoe6_.png'),
    Shoe(
        name: 'LUKA 2',
        price: '199',
        description: 'SPEED MEETS STABILITY WITH PREMIUM CUSHIONING',
        imagePath: 'lib/images/shoe5_.png'),
    Shoe(
        name: 'TATUM 1',
        price: '499',
        description:
            'Get up with nothing weighing you down in a shoe designed for next-level responsiveness ',
        imagePath: 'lib/images/shoe4_.png'),
    Shoe(
        name: 'Jordan One Take 4 PF',
        price: '250',
        description: 'Get that speed you need, just like Russ.',
        imagePath: 'lib/images/shoe_3.png'),
    Shoe(
        name: 'Air Jordan 1 Zoom CMFT 2',
        price: '300',
        description:
            'Premium suede and Jordan Brands signature Formula 23 foam come together to give you an extra luxurious (and extra cosy) AJ1. ',
        imagePath: 'lib/images/shoe2_.png'),
    Shoe(
        name: 'Air Jordan 1 Mid',
        price: '199',
        description:
            'Inspired by the original AJ1, this mid-top edition maintains the iconic look you love while choice colours and crisp leather give it a distinct identity.',
        imagePath: 'lib/images/shoe1_.png'),
    Shoe(
        name: 'Nike Swoosh',
        price: '60',
        description:
            'Go bigger with the Swoosh. Our full-zip, woven jacket is a versatile, water-repellent outer layer that helps shield you from the elements. It has a concealed hood you can unpack for those windy, rainy days.',
        imagePath: 'lib/images/dress10_.png'),
    Shoe(
        name: 'Nike Track Club',
        price: '85',
        description:
            'Welcome to the Nike Track Club. Our mission: celebrate the rich history of Nike Running by helping todays athletes and tomorrows stars in the sport of running. ',
        imagePath: 'lib/images/dress9_.png'),
    Shoe(
        name: 'Nike Sportswear',
        price: '100',
        description: 'Throw it back with the Nike Sportswear Tracksuit',
        imagePath: 'lib/images/dress8_.png'),
    Shoe(
        name: 'Nike Hood track',
        price: '25',
        description: 'Run all day',
        imagePath: 'lib/images/dress7_.png'),
    Shoe(
        name: 'Nike Dri-FIT Club',
        price: '25',
        description:
            'Open the doors for the Club Cap. The structured, mid-depth crown keeps you feeling comfortable and secure. ',
        imagePath: 'lib/images/cap4_.png'),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
