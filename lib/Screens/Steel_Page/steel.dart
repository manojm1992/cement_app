import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Global/constants.dart';

class ProductCard_2 extends StatefulWidget {
  final String imageList_2;
  final String title_2;
  final String subtitle_2;
  final double price;
  final bool isPressed;
  final VoidCallback? onPressed;
  const ProductCard_2({
    super.key,
    required this.imageList_2,
    required this.title_2,
    required this.subtitle_2,
    required this.price,
    required this.isPressed,
    required this.onPressed,
  });

  @override
  State<ProductCard_2> createState() => _ProductCard_2State();
}

// ignore: camel_case_types
class _ProductCard_2State extends State<ProductCard_2> {
  bool isFavorite = false; // Define isFavorite variable
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: 170,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Card(
                  color: const Color(0xFFDFDFDF),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color.fromARGB(71, 158, 158, 158),
                    ),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Image.asset(
                      widget.imageList_2,
                    ),
                  ),
                ),
                Positioned(
                  right: 5,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(8),
                        child: IconButton(
                          icon: Icon(
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: isFavorite ? Colors.red : Colors.grey,
                            size: 30,
                          ),
                          onPressed: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.title_2,
                textAlign: TextAlign.center,
                style: TEXT_STYLE.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: BOLD,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.subtitle_2,
                textAlign: TextAlign.center,
                style: TEXT_STYLE.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: LIT_BOLD,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '₹450.00/KG',
                style: TEXT_STYLE.copyWith(
                  fontSize: SIZE_SM,
                  fontWeight: FontWeight.bold,
                  color: BOLD,
                ),
              ),
              const SizedBox(width: 30),
              Text(
                //'${product.originalPrice}',
                '500.00',
                style: TEXT_STYLE.copyWith(
                  fontSize: SIZE_SM,
                  fontWeight: FontWeight.normal,
                  color: LIT_BOLD,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 40,
            width: 170,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  isPressed ? BOLD : const Color(0xFFD3D3D3),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    side: BorderSide(color: Colors.black, width: 1.0),
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  isPressed = !isPressed; // Toggle the pressed state
                });
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) =>
                //             const OtpVerificationScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.bagShopping,
                    size: 20,
                    color: isPressed ? const Color(0xFFD3D3D3) : BOLD,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Add To Cart",
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w500,
                      color: isPressed ? const Color(0xFFD3D3D3) : BOLD,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<String> imageList_2 = [
  'assets/iron_images/image 38.png',
  'assets/iron_images/image 39.png',
  'assets/iron_images/image 39.png',
  'assets/iron_images/image 39.png',
  'assets/iron_images/image 39.png',
];

List<String> titleList_2 = [
  'TATA Steel - 24mm',
  'JSW Steel - 16mm',
  'JSW Steel - 16mm',
  'TATA Steel - 24mm',
  'JSW Steel - 16mm',
];

List<String> subtitleList_2 = [
  'TATA Steels',
  'TATA Steels',
  'TATA Steels',
  'TATA Steels',
  'TATA Steels',
];
