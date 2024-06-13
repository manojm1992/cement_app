import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Privacypolicy extends StatelessWidget {
  const Privacypolicy({super.key});

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
                    'Privacy Policy',
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
                  'Welcome to SK Cement. Your privacy is important to us, and we are committed to protecting your personal information. This Privacy Policy outlines how we collect, use, disclose, and safeguard your data when you use our services.',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF757575),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.024),
                Text(
                  'Information We Collect',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color.fromARGB(255, 27, 58, 87),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
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
                        'Personal Information: Name, email address, phone number, billing information, and other details you provide during registration or transactions.',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xFF757575),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
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
                        'Usage Data: Information about your interactions with our app, including IP address, device type, browser type, and usage patterns.',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xFF757575),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
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
                        'Cookies and Tracking: Data collected through cookies and similar tracking technologies to enhance your user experience.',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xFF757575),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.024),
                Text(
                  'How We Use Your Information',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color.fromARGB(255, 27, 58, 87),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
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
                        'Service Delivery: To process transactions, manage your account, and provide customer support.',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xFF757575),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
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
                        'Improvement: To analyze usage patterns and improve our products and services.',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xFF757575),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
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
                        'Marketing: To send promotional materials, updates, and offers (with your consent)',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xFF757575),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.024),
                Text(
                  'Changes to This Privacy Policy',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color.fromARGB(255, 27, 58, 87),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
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
                        'We may update this Privacy Policy from time to time. Any changes will be posted on this page, and the effective date will be updated. We encourage you to review this policy periodically to stay informed about how we protect your information.',
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
        ));
  }
}
