import 'package:e_com_app/Global/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Product {
  final String title;
  final String imageUrl;
  final String price;
  final String subtitle;
  bool isFavorite;

  Product({
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.subtitle,
    this.isFavorite = false,
    required String originalPrice,
  });
}
