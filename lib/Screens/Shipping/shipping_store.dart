import 'package:e_com_app/Screens/Shipping/payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Global/constants.dart';
import 'shipping_delivery.dart';

class ShippingStorePage extends StatefulWidget {
  const ShippingStorePage({super.key});

  @override
  State<ShippingStorePage> createState() => _ShippingStorePageState();
}

class _ShippingStorePageState extends State<ShippingStorePage> {
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 17, right: 17),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                children: [
                  Text(
                    'Shipping Options',
                    style: TEXT_STYLE.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.010,
              ),
              const Row(
                children: [
                  Expanded(child: RadioButton()),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.040,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Address',
                    style: TEXT_STYLE.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '+',
                    style: TEXT_STYLE.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: CircleAvatar(
                      maxRadius: 10,
                      backgroundColor: BOLD,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Store Address',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w600,
                      color: BOLD,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.010,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Text(
                  'No:13, 5th Street  SAP Nagar',
                  style: TEXT_STYLE.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.010,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Text(
                  'Karnataka',
                  style: TEXT_STYLE.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.010,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 90),
                child: Text(
                  'Bangalore - 500623',
                  style: TEXT_STYLE.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.010,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 90),
                child: Text(
                  'Phone : 8976543210',
                  style: TEXT_STYLE.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 83),
                    child: SizedBox(
                      height: 30,
                      width: 100,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all<Color>(Colors.white
                                  // isPressed ? BOLD : Colors.white,
                                  ),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              side: BorderSide(color: BOLD, width: 1.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          // setState(() {
                          //   isPressed = !isPressed; // Toggle the pressed state
                          // });
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             const OtpVerificationScreen()));
                        },
                        child: Text(
                          "CALL",
                          style: TEXT_STYLE.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: BOLD,
                            // color: isPressed ? const Color(0xFFD3D3D3) : BOLD,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.070,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Expected Delivery',
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '25th Sep',
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF4D4D4D),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.040,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Amount Payable',
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '₹1,00,000',
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.bold,
                        color: BOLD,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.050,
              ),
              SizedBox(
                height: 46,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(BOLD),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        side: BorderSide(color: BOLD, width: 1.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PaymentPage()));
                  },
                  child: Text(
                    "Proceed to Payment",
                    style: TEXT_STYLE.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
