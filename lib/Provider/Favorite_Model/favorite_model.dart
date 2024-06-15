

import 'package:flutter/cupertino.dart';



class FavoritesProvider extends ChangeNotifier {
  final List<Favorite> _favorites = [];

  List<Favorite> get favorites => _favorites;

  void addFavorite(Favorite favorite) {
    _favorites.add(favorite);
    notifyListeners();
  }

  void removeFavorite(Favorite favorite) {
    _favorites.remove(favorite);
    notifyListeners();
  }

  bool isFavorite(Favorite favorite) {
    return _favorites.contains(favorite);
  }
}

class Favorite {
  final String imageList;
  final String titleList;
  final String subtitleList;
  final double price;
  final bool isPressed;
  bool isFavorite;

  Favorite ({
    required this.imageList,
    required this.titleList,
    required this.price,
    required this.subtitleList,
    this.isFavorite = false,
    required this.isPressed,
  });
}

List<String> imageList = [
  'assets/cement_images/image 31.png',
  'assets/iron_images/image 38.png',
  'assets/iron_images/image 39.png',
  'assets/cement_images/image 32.png',
  'assets/cement_images/image 36.png',
  'assets/cement_images/image 45.png',
  'assets/iron_images/image 38.png',
  'assets/cement_images/image 32.png',
  'assets/iron_images/image 38.png',
];

List<String> titleList = [
  'Ramco A1 OPC Cement',
  'TATA Steel - 24mm',
  'JSW Steel - 16mm',
  'ACC A1 OPC Cement',
  'Birla A1 OPC Cement',
  'ACC A1 OPC Cement',
  'ACC A1 OPC Cement',
  'ACC A1 OPC Cement',
];

List<String> subtitleList = [
  'CEMENT, OPC 53 GRADE',
  'TATA Steels',
  'CEMENT, OPC 53 GRADE',
  'CEMENT, OPC 53 GRADE',
  'TATA Steels',
  'TATA Steels',
  'CEMENT, OPC 53 GRADE',
  'CEMENT, OPC 53 GRADE',
];

