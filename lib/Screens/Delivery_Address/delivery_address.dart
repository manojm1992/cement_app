import 'package:e_com_app/Screens/payments/payments.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Global/constants.dart';
import '../payments/payment_1.dart';

class DeliveryAddressPage extends StatefulWidget {
  const DeliveryAddressPage({super.key});

  @override
  State<DeliveryAddressPage> createState() => _DeliveryAddressPageState();
}

class _DeliveryAddressPageState extends State<DeliveryAddressPage> {
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
                  Text(
                    'Shipping address',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    labelStyle: TEXT_STYLE.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: LIT_BOLD,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black, // Outline color
                      ),
                      borderRadius:
                          BorderRadius.circular(12.0), // Rounded corners
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black, // Outline color when focused
                      ),
                      borderRadius:
                          BorderRadius.circular(12.0), // Rounded corners
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color:
                            CONTAINER_COLOR, // Outline color when not focused
                      ),
                      borderRadius:
                          BorderRadius.circular(12.0), // Rounded corners
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Address Line-1',
                    labelStyle: TEXT_STYLE.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF828282),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black, // Outline color
                      ),
                      borderRadius:
                          BorderRadius.circular(12.0), // Rounded corners
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black, // Outline color when focused
                      ),
                      borderRadius:
                          BorderRadius.circular(12.0), // Rounded corners
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color:
                            CONTAINER_COLOR, // Outline color when not focused
                      ),
                      borderRadius:
                          BorderRadius.circular(12.0), // Rounded corners
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Address Line-2',
                    labelStyle: TEXT_STYLE.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF828282),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black, // Outline color
                      ),
                      borderRadius:
                          BorderRadius.circular(12.0), // Rounded corners
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black, // Outline color when focused
                      ),
                      borderRadius:
                          BorderRadius.circular(12.0), // Rounded corners
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color:
                            CONTAINER_COLOR, // Outline color when not focused
                      ),
                      borderRadius:
                          BorderRadius.circular(12.0), // Rounded corners
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'City',
                    labelStyle: TEXT_STYLE.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF828282),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black, // Outline color
                      ),
                      borderRadius:
                          BorderRadius.circular(12.0), // Rounded corners
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black, // Outline color when focused
                      ),
                      borderRadius:
                          BorderRadius.circular(12.0), // Rounded corners
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color:
                            CONTAINER_COLOR, // Outline color when not focused
                      ),
                      borderRadius:
                          BorderRadius.circular(12.0), // Rounded corners
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 170,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'City',
                        labelStyle: TEXT_STYLE.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF828282),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black, // Outline color
                          ),
                          borderRadius:
                              BorderRadius.circular(12.0), // Rounded corners
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black, // Outline color when focused
                          ),
                          borderRadius:
                              BorderRadius.circular(12.0), // Rounded corners
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color:
                                CONTAINER_COLOR, // Outline color when not focused
                          ),
                          borderRadius:
                              BorderRadius.circular(12.0), // Rounded corners
                        ),
                        suffixIcon: Icon(
                          Icons.keyboard_arrow_down,
                          size: 30, // Down arrow icon
                          color: Color(0xFF828282), // Icon color
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 50,
                    width: 170,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'City',
                        labelStyle: TEXT_STYLE.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF828282),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black, // Outline color
                          ),
                          borderRadius:
                              BorderRadius.circular(12.0), // Rounded corners
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black, // Outline color when focused
                          ),
                          borderRadius:
                              BorderRadius.circular(12.0), // Rounded corners
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color:
                                CONTAINER_COLOR, // Outline color when not focused
                          ),
                          borderRadius:
                              BorderRadius.circular(12.0), // Rounded corners
                        ),
                        suffixIcon: Icon(
                          Icons.keyboard_arrow_down,
                          size: 30, // Down arrow icon
                          color: Color(0xFF828282), // Icon color
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Zip code',
                    labelStyle: TEXT_STYLE.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF828282),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black, // Outline color
                      ),
                      borderRadius:
                          BorderRadius.circular(12.0), // Rounded corners
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black, // Outline color when focused
                      ),
                      borderRadius:
                          BorderRadius.circular(12.0), // Rounded corners
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color:
                            CONTAINER_COLOR, // Outline color when not focused
                      ),
                      borderRadius:
                          BorderRadius.circular(12.0), // Rounded corners
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Phone NO',
                    labelStyle: TEXT_STYLE.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF828282),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black, // Outline color
                      ),
                      borderRadius:
                          BorderRadius.circular(12.0), // Rounded corners
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black, // Outline color when focused
                      ),
                      borderRadius:
                          BorderRadius.circular(12.0), // Rounded corners
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color:
                            CONTAINER_COLOR, // Outline color when not focused
                      ),
                      borderRadius:
                          BorderRadius.circular(12.0), // Rounded corners
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                            builder: (context) => const PaymentScreen()));
                  },
                  child: Text(
                    "Save",
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w600,
                      color: BOLD,
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
