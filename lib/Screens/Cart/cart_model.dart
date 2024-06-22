import 'package:e_com_app/Screens/cement.dart';
import 'package:flutter/material.dart';

class CartItem {
  final String name;
  final double price;

  CartItem(
    this.name,
    this.price,
    //  {required CementProduct cementproduct}
  );
}

class CartModel extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  int get itemCount => _items.length;

  void addItem(CartItem item) {
    _items.add(item);
    notifyListeners();
  }
}
