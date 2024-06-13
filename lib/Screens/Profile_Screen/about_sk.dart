import 'package:e_com_app/Global/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutSkCement extends StatelessWidget {
  const AboutSkCement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop(); // Handle back action
          },
        ),
        title: Padding(
          padding:
              const EdgeInsets.only(left: 0), // Adjust the padding if needed
          child: CircleAvatar(
            child: Image.asset('assets/logoo.png'),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {
              // Handle favorite action
            },
          ),
          Stack(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                ),
                onPressed: () {
                  // Handle add to cart action
                },
              ),
              Positioned(
                right: 5,
                top: 5,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.green, // Green background for the counter
                    borderRadius: BorderRadius.circular(30), // Circular shape
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 20,
                    minHeight: 20,
                  ),
                  child: Center(
                    child: Text('2', // Number to be displayed in the counter
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              child: Image.asset('assets/Menu.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF6F8FA),
                    hintText: 'Search',
                    hintStyle: const TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.normal),
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27.0),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 234, 229, 229)
                            .withOpacity(0.5),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27.0),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 238, 237, 237)
                            .withOpacity(0.5),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27.0),
                      borderSide: BorderSide(
                        color: Colors.blue.withOpacity(0.5),
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 15.0,
                    ),
                  ),
                ),
              ),
              //SizedBox(height: 32),
              const Padding(
                padding: EdgeInsets.only(left: 0.0, top: 32),
                child: Text(
                  'About SK Cements',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              const SizedBox(height: 32),
              const Text('Introduction',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: SIZE_SM,
                      color: DARK_BOLD)),
              const SizedBox(height: 15),
              const Text(
                  'Welcome to the SK Cements mobile app. By downloading, installing, and using this app, you agree to comply with and be bound by the following terms and conditions.',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: LIT_BOLD)),
              const SizedBox(height: 32),
              const Text(
                'Our Mission',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: SIZE_SM,
                    color: DARK_BOLD),
              ),
              const SizedBox(height: 15),
              const Text(
                  'At SK Cements, our mission is to build a strong foundation for the future by delivering superior cement products that ensure the durability and strength of your constructions.',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: LIT_BOLD)),
              const SizedBox(height: 32),
              const Text('Our Vision',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: SIZE_SM,
                      color: DARK_BOLD)),
              const SizedBox(height: 15),
              const Text(
                  'We envision becoming the most trusted and preferred cement brand globally by maintaining our unwavering commitment to quality, customer satisfaction, and environmental sustainability.',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: LIT_BOLD)),
              const SizedBox(height: 32),
              const Text('Our Values',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: SIZE_SM,
                      color: DARK_BOLD)),
              const SizedBox(height: 15),
              const PointsList(),
              const SizedBox(height: 32),
              const Text('Our Products',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: SIZE_SM,
                      color: DARK_BOLD)),
              const SizedBox(height: 15),
              const ProductsList(),
            ],
          ),
        ),
      ),
    );
  }
}

class PointsList extends StatelessWidget {
  const PointsList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> points = [
      "Quality: We prioritize delivering the highest quality cement to ensure the longevity and safety of your projects.",
      "Integrity: We conduct our business with the utmost honesty and transparency.",
      "Customer Focus: Our customers are at the heart of everything we do, and we aim to exceed their expectations.",
      "Sustainability: We are committed to sustainable practices that protect and preserve our environment for future generations",
    ];

    return Column(
      children: points.map((point) {
        return Column(
          children: [
            Row(
              children: [
                const Text("\u2022 ", // Unicode for bullet point
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: LIT_BOLD)),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(point,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: LIT_BOLD)),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
          ],
        );
      }).toList(),
    );
  }
}

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> products = [
      "Ordinary Portland Cement (OPC)",
      "Portland Pozzolana Cement (PPC)",
      "White Cement",
      "Sulphate Resisting Cement",
    ];

    return Column(
      children: products.map((product) {
        return Column(
          children: [
            Row(
              children: [
                const Text("\u2022 ", // Unicode for bullet point
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: LIT_BOLD)),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(product,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: LIT_BOLD)),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
          ],
        );
      }).toList(),
    );
  }
}
