import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Global/constants.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 24,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Text(
                  "Product Details",
                  style: TEXT_STYLE.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: BOLD,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    shape: BoxShape.circle,
                    // border: Border.all(
                    //   color: Colors.black, // Set the border color to black
                    //   width: 1.0, // Set the border width (thin)
                    // ),
                  ),
                  width:
                      40, // Set the width of the container to match the icon size
                  height: 40,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
