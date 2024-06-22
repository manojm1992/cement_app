import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

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
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFF6F8FA),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                        ),
                        prefixIcon: Icon(Icons.search),
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
                  const SizedBox(
                      width: 8), // Space between TextField and IconButton
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(
                          255, 0, 31, 63), // Change color as needed
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.tune, // This is the filter icon
                        color: Colors.white, // Color of the icon
                      ),
                      onPressed: () {
                        // Handle filter action
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0, top: 32),
                child: Text(
                  'Terms & Conditions',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 32),
              Text(
                'Introduction',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color.fromARGB(255, 27, 58, 87),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Welcome to the SK Cements mobile app. By downloading, installing, and using this app, you agree to comply with and be bound by the following terms and conditions.',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xFF757575),
                ),
              ),
              SizedBox(height: 32),
              Text(
                'Orders and Payment',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color.fromARGB(255, 27, 58, 87),
                ),
              ),
              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Icon(Icons.brightness_1, size: 6, color: Color(0xFF757575)),
                  Text(
                    "\u2022 ", // Unicode for bullet point
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF757575),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      'Order Placement: Orders can be placed through our app. Ensure all details are correct before finalizing the order.',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xFF757575),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Icon(Icons.brightness_1, size: 6, color: Color(0xFF757575)),
                  Text(
                    "\u2022 ", // Unicode for bullet point
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF757575),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      'Pricing: All prices are subject to change without notice.',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xFF757575),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Icon(Icons.brightness_1, size: 6, color: Color(0xFF757575)),
                  Text(
                    "\u2022 ", // Unicode for bullet point
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF757575),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      'Payment Terms: Payment must be made at the time of order placement through the available payment methods in the app. Late payments may incur additional charges.',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xFF757575),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 28),
              Text(
                'Delivery and Shipping',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color.fromARGB(255, 27, 58, 87),
                ),
              ),
              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Icon(Icons.brightness_1, size: 6, color: Color(0xFF757575)),
                  Text(
                    "\u2022 ", // Unicode for bullet point
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF757575),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      'Delivery Policy: Delivery times are estimates and may vary based on location and availability.',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xFF757575),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Icon(Icons.brightness_1, size: 6, color: Color(0xFF757575)),
                  Text(
                    "\u2022 ", // Unicode for bullet point
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF757575),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      'Shipping Charges: Any applicable shipping charges will be displayed at checkout.',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xFF757575),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 28),
              Text(
                'Changes to Terms',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color.fromARGB(255, 27, 58, 87),
                ),
              ),
              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Icon(Icons.brightness_1, size: 6, color: Color(0xFF757575)),
                  Text(
                    "\u2022 ", // Unicode for bullet point
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF757575),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      'Modification: Terms may change; effective upon posting.',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xFF757575),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Icon(Icons.brightness_1, size: 6, color: Color(0xFF757575)),
                  Text(
                    "\u2022 ", // Unicode for bullet point
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF757575),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      'Notification: Significant changes notified via app or email.',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xFF757575),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 28),
              Text(
                'Contact Information',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color.fromARGB(255, 27, 58, 87),
                ),
              ),
              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Icon(Icons.brightness_1, size: 6, color: Color(0xFF757575)),
                  Text(
                    "\u2022 ", // Unicode for bullet point
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF757575),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      'Email: support@skcements.com',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xFF757575),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Icon(Icons.brightness_1, size: 6, color: Color(0xFF757575)),
                  Text(
                    "\u2022 ", // Unicode for bullet point
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF757575),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      'Phone: +1-234-567-890',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xFF757575),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      'By using the app, you agree to these terms and conditions.',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xFF757575),
                      ),
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
