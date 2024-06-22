import 'package:e_com_app/Screens/Cart/cart_item.dart';
import 'package:e_com_app/Screens/Cart/cart_model.dart';
import 'package:e_com_app/common_appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
  const Cement({Key? key}) : super(key: key); // Fix: 'Key' type used correctly

  @override
  _CementState createState() => _CementState();

  void removeItemFromCart(CementProduct cementProduct) {}
}

class _CementState extends State<Cement> {
  List<bool> isFavoriteList = List.generate(10, (index) => false);
  List<bool> isPressedList = List.generate(10, (index) => false);

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
      imagePath: 'assets/cement_images/ACC A1 OPC Cement.png',
      price: 460.00,
      originalPrice: 510.00,
    ),
    CementProduct(
      name: 'Birla A1 OPC Cement',
      description: 'CEMENT, OPC 53 GRADE',
      imagePath: 'assets/cement_images/image 45.png',
      price: 470.00,
      originalPrice: 520.00,
    ),
    CementProduct(
      name: 'Shriram A1 OPC Cement',
      description: 'CEMENT, OPC 53 GRADE',
      imagePath: 'assets/cement_images/Shriram A1 OPC Cement.png',
      price: 480.00,
      originalPrice: 530.00,
    ),
    CementProduct(
      name: 'Dalmia A1 OPC Cement',
      description: 'CEMENT, OPC 53 GRADE',
      imagePath: 'assets/cement_images/Dalmia A1 OPC Cement.png',
      price: 490.00,
      originalPrice: 540.00,
    ),
    CementProduct(
      name: 'Birla A1 OPC Cement',
      description: 'CEMENT, OPC 53 GRADE',
      imagePath: 'assets/cement_images/Birla A1 OPC Cement.png',
      price: 490.00,
      originalPrice: 540.00,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context); // Access the cart model here

    return Scaffold(
      appBar: const CommonAppBar(title: ''),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
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
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.tune,
                        color: Color(0xFFFFFFFF),
                      ),
                      onPressed: () {
                        // Show bottom drawer
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.030),
              Text(
                'Cement',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF000000),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.030),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                            Container(
                              height: 195,
                              width: 176,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFFDFDFDF),
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
                                child: Container(
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
                            ),
                          ],
                        ),
                      ),
                      Text(
                        product.name,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: const Color(0xFF000000),
                        ),
                      ),
                      Text(
                        product.description,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color(0xFF757575),
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
                              isPressedList[index] = !isPressedList[index];
                            });
                            cart.addItem(CartItem(
                              product.name,
                              product.price,
                            ));

                            // Show alert dialog
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text("Success"),
                                  content: Text(
                                      "Item added successfully to the cart."),
                                  actions: [
                                    TextButton(
                                      child: Text("OK"),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pop(); // Close dialog
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
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

List<CementProduct> userCart = [];

void RemoveItemFromCart(CementProduct cementproduct) {
  userCart.remove(cementproduct);
  //notifyListeners();
}
