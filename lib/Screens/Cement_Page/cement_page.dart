import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../bottom_drawer.dart';

class CementProduct {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final double originalPrice;

  CementProduct({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.originalPrice,
  });
}

class Cement extends StatefulWidget {
  const Cement({required key}) : super(key: key);

  @override
  _CementState createState() => _CementState();
}

class _CementState extends State<Cement> {
  List<bool> isFavoriteList =
  List.generate(10, (index) => false); // Manage favorites for each item
  List<bool> isPressedList =
  List.generate(10, (index) => false); // Manage button press for each item

  final List<CementProduct> cementProducts = [
    CementProduct(
      name: 'Ramco A1 OPC Cement',
      description: 'CEMENT, OPC 53 GRADE',
      imagePath: 'assets/cement_images/image 30.png',
      price: 450.00,
      originalPrice: 500.00,
    ),
    CementProduct(
      name: 'ACC A1 OPC Cement',
      description: 'CEMENT, OPC 53 GRADE',
      imagePath: 'assets/cement_images/image 32.png',
      price: 460.00,
      originalPrice: 510.00,
    ),
    CementProduct(
      name: 'Birla A1 OPC Cement',
      description: 'CEMENT, OPC 53 GRADE',
      imagePath: 'assets/cement_images/image 36.png',
      price: 470.00,
      originalPrice: 520.00,
    ),
    CementProduct(
      name: 'Shriram A1 OPC Cement',
      description: 'CEMENT, OPC 53 GRADE',
      imagePath: 'assets/cement_images/image 45.png',
      price: 480.00,
      originalPrice: 530.00,
    ),
    CementProduct(
      name: 'Dalmia A1 OPC Cement',
      description: 'CEMENT, OPC 53 GRADE',
      imagePath: 'assets/cement_images/image 32.png',
      price: 490.00,
      originalPrice: 540.00,
    ),
    CementProduct(
      name: 'Birla A1 OPC Cement',
      description: 'CEMENT, OPC 53 GRADE',
      imagePath: 'assets/cement_images/image 30.png',
      price: 490.00,
      originalPrice: 540.00,
    ),
  ];

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
          padding: const EdgeInsets.only(left: 0),
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
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 20,
                    minHeight: 20,
                  ),
                  child: Center(
                    child: Text(
                      '2',
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
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
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.030),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFF6F8FA),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[600],
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
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
                  const SizedBox(width: 10),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.tune,
                        color: Color(0xFFFFFFFF),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return const BottomDrawerContent();
                          },
                        );
                        // Show bottom drawer
                      },
                    ),
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.030),
              const Text(
                'Cement',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.030),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.55,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 20,
                ),
                itemCount: cementProducts.length,
                itemBuilder: (context, index) {
                  CementProduct product = cementProducts[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            Card(
                              color: const Color(0xFFDFDFDF),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Color.fromARGB(71, 158, 158, 158),
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(25),
                                child: Image.asset(
                                  product.imagePath,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 10,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isFavoriteList[index] =
                                    !isFavoriteList[index];
                                  });
                                },
                                child: Icon(
                                  isFavoriteList[index]
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: isFavoriteList[index]
                                      ? Colors.red
                                      : Colors.grey,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        product.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFF000000),
                        ),
                      ),
                      Text(
                        product.description,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xFF757575),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '₹${product.price.toStringAsFixed(2)}/KG',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            '₹${product.originalPrice.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 34,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              isPressedList[index]
                                  ? const Color(0xFF1B3A57)
                                  : Colors.white,
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                side: const BorderSide(
                                    color: Color(0xFF001F3F), width: 1.0),
                              ),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              isPressedList[index] = !isPressedList[
                              index]; // Toggle the pressed state
                            });
                            // Navigate or perform action
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_bag_outlined,
                                size: 20,
                                color: isPressedList[index]
                                    ? const Color(0xFFD3D3D3)
                                    : const Color(0xFF1B3A57),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "Add To Cart",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: isPressedList[index]
                                      ? const Color(0xFFD3D3D3)
                                      : const Color(0xFF1B3A57),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}