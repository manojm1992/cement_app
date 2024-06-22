import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Global/constants.dart';
import 'order_page_2.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  List<bool> _isButton = [true, false, false]; // Default to "Active" as button

  void _toggleButton(int index) {
    setState(() {
      for (int i = 0; i < _isButton.length; i++) {
        _isButton[i] = i == index;
      }
    });
  }

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
      body: Padding(
        padding: const EdgeInsets.only(left: 17, right: 17),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.040,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _isButton[0]
                      ? SizedBox(
                          height: 38,
                          width: 109,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(BOLD),
                              shape: const MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(0.0),
                                  ),
                                ),
                              ),
                            ),
                            onPressed: () {
                              // Add your onPressed functionality here
                            },
                            child: Text(
                              "Active",
                              style: TEXT_STYLE.copyWith(
                                fontSize: SIZE_SM,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFFD3D3D3),
                              ),
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () => _toggleButton(0),
                          child: Text(
                            "Active",
                            style: TEXT_STYLE.copyWith(
                              fontSize: SIZE_SM,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF3C4242),
                            ),
                          ),
                        ),
                  _isButton[1]
                      ? SizedBox(
                          height: 38,
                          width: 115,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(BOLD),
                              shape: const MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(0.0),
                                  ),
                                ),
                              ),
                            ),
                            onPressed: () {
                              // Add your onPressed functionality here
                            },
                            child: Text(
                              "Cancelled",
                              style: TEXT_STYLE.copyWith(
                                fontSize: SIZE_SM,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFFD3D3D3),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () => _toggleButton(1),
                          child: Text(
                            "Cancelled",
                            style: TEXT_STYLE.copyWith(
                              fontSize: SIZE_SM,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF3C4242),
                            ),
                          ),
                        ),
                  _isButton[2]
                      ? SizedBox(
                          height: 38,
                          width: 109,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(BOLD),
                              shape: const MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(0.0),
                                  ),
                                ),
                              ),
                            ),
                            onPressed: () {
                              // Add your onPressed functionality here
                            },
                            child: Text(
                              "Completed",
                              style: TEXT_STYLE.copyWith(
                                fontSize: SIZE_SM,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFFD3D3D3),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () => _toggleButton(2),
                          child: Text(
                            "Completed",
                            style: TEXT_STYLE.copyWith(
                              fontSize: SIZE_SM,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF3C4242),
                            ),
                          ),
                        ),
                ],
              ),
              const Divider(
                color: SECONDARY_COLOR,
                thickness: 3,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                children: [
                  Text(
                    'Track Orders',
                    style: TEXT_STYLE.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  width: 382,
                  height: 213,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF6F6F6), // Background color
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Order no: #123465667',
                              style: TEXT_STYLE.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF3C4242),
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              OrderScreenPage()));
                                },
                                icon: const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Order Date : ',
                              style: TEXT_STYLE.copyWith(
                                fontSize: SIZE_SM,
                                fontWeight: FontWeight.w600,
                                color: LIT_BOLD,
                              ),
                            ),
                            Text(
                              '03 June 2024 3:00 PM ',
                              style: TEXT_STYLE.copyWith(
                                fontSize: SIZE_SM,
                                fontWeight: FontWeight.w400,
                                color: LIT_BOLD,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.007,
                        ),
                        Row(
                          children: [
                            Text(
                              'Estimated Delivery Date : ',
                              style: TEXT_STYLE.copyWith(
                                fontSize: SIZE_SM,
                                fontWeight: FontWeight.w600,
                                color: LIT_BOLD,
                              ),
                            ),
                            Text(
                              ' 10 June 2024  ',
                              style: TEXT_STYLE.copyWith(
                                fontSize: SIZE_SM,
                                fontWeight: FontWeight.w400,
                                color: LIT_BOLD,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.020,
                        ),
                        Row(
                          children: [
                            Text(
                              'Order Status : ',
                              style: TEXT_STYLE.copyWith(
                                fontSize: SIZE_SM,
                                fontWeight: FontWeight.w600,
                                color: LIT_BOLD,
                              ),
                            ),
                            Text(
                              'Shipped',
                              style: TEXT_STYLE.copyWith(
                                fontSize: SIZE_SM,
                                fontWeight: FontWeight.w400,
                                color: LIT_BOLD,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.007,
                        ),
                        Row(
                          children: [
                            Text(
                              'Payment Method : ',
                              style: TEXT_STYLE.copyWith(
                                fontSize: SIZE_SM,
                                fontWeight: FontWeight.w600,
                                color: LIT_BOLD,
                              ),
                            ),
                            Text(
                              'Debit card',
                              style: TEXT_STYLE.copyWith(
                                fontSize: SIZE_SM,
                                fontWeight: FontWeight.w400,
                                color: LIT_BOLD,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.050,
              ),
              Row(
                children: [
                  Text(
                    'Your Products',
                    style: TEXT_STYLE.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,
                height: 130,
                child: Card(
                  color: const Color(0xFFDFDFDF),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color.fromARGB(71, 158, 158, 158),
                    ),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      'assets/cement_images/image 32.png',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              Row(
                children: [
                  Text(
                    'Ramco A1 OPC Cement',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF202226),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'CEMENT, OPC 53 GRADE',
                    style: TEXT_STYLE.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF666666),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              Row(
                children: [
                  Text(
                    '₹ 450.00',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    '₹ 500.00',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w400,
                      color: LIT_BOLD,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.040,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,
                height: 130,
                child: Card(
                  color: const Color(0xFFDFDFDF),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color.fromARGB(71, 158, 158, 158),
                    ),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      'assets/iron_images/image 38.png',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              Row(
                children: [
                  Text(
                    'TATA Steel - 24mm',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF202226),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Madhu Steels',
                    style: TEXT_STYLE.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF666666),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              Row(
                children: [
                  Text(
                    '₹ 50.00 / KG',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    '₹ 55.00',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w400,
                      color: LIT_BOLD,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
