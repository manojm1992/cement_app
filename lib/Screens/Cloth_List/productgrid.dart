import 'package:e_com_app/Global/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Product_model/product_model.dart';
import 'product_details.dart';

class ProductGridPage extends StatefulWidget {
  const ProductGridPage({super.key});

  @override
  State<ProductGridPage> createState() => _ProductGridPageState();
}

class _ProductGridPageState extends State<ProductGridPage> {
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
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.1),
                      shape: BoxShape.circle),
                  child: const Icon(
                    Icons.search,
                    size: 24,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              children: [
                Text(
                  'Clothes',
                  style: TEXT_STYLE.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Flexible(child: CardsGrid()),
          ],
        ),
      ),
    );
  }
}

class CardsGrid extends StatefulWidget {
  const CardsGrid({super.key});

  @override
  State<CardsGrid> createState() => _CardsGridState();
}

class _CardsGridState extends State<CardsGrid> {
  // Sample data
  final List<Product> products = List.generate(
    10,
    (index) => Product(
        title: 'Airfoece Jumpman',
        subtitle: 'Vado Odelle Dress',
        price: '240',
        imageUrl: 'assets/download.png',
        originalPrice: '400'),
  );
  bool isFavorite = false; // Track the favorite state

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 0.59, // Adjust this to get the desired card height
      ),
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProductDetails()));
          },
          child: Card(
            elevation: 4.0,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image container
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Image.asset(
                          products[index].imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.008,
                      ), // Space between image and texts
                      // Column of texts
                      Text(
                        products[index].title,
                        style: TEXT_STYLE.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.008,
                      ), // Space between title and subtitle
                      Text(
                        products[index].subtitle,
                        style: TEXT_STYLE.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.008,
                      ),
                      Text(
                        '\$${products[index].price}',
                        style: TEXT_STYLE.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: BOLD,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: Icon(
                          products[index].isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: products[index].isFavorite
                              ? Colors.red
                              : Colors.grey),
                      onPressed: () {
                        setState(() {
                          products[index].isFavorite;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
