import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Faqs extends StatefulWidget {
  const Faqs({super.key});

  @override
  State<Faqs> createState() => _FaqsState();
}

class _FaqsState extends State<Faqs> {
  // State to manage expansion
  bool isExpanded1 = false;
  bool isExpanded2 = false;
  bool isExpanded3 = false;
  bool isExpanded4 = false;

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
                  'FAQ’S',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 32),
              Container(
                child: Column(
                  children: [
                    buildCustomExpansionTile(
                      'What personal information does SK Cement collect?',
                      'SK Cement collects personal information such as your name, email address, phone number, billing information, and other details provided during registration or transactions.',
                      isExpanded1,
                      () {
                        setState(() {
                          isExpanded1 = !isExpanded1;
                        });
                      },
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.032),
                    buildCustomExpansionTile(
                      'Does SK Cement share my information with third parties?',
                      'SK Cement does not share your personal information with third parties except as necessary to provide you with the services or as required by law.',
                      isExpanded2,
                      () {
                        setState(() {
                          isExpanded2 = !isExpanded2;
                        });
                      },
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.032),
                    buildCustomExpansionTile(
                      'How does SK Cement protect my data?',
                      'SK Cement uses a variety of security measures to ensure the protection of your personal information, including encryption, secure servers, and access controls.',
                      isExpanded3,
                      () {
                        setState(() {
                          isExpanded3 = !isExpanded3;
                        });
                      },
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.032),
                    buildCustomExpansionTile(
                      'Can I access and correct my personal information?',
                      'Yes, you can access and correct your personal information by logging into your account on our website or by contacting our customer service.',
                      isExpanded4,
                      () {
                        setState(() {
                          isExpanded4 = !isExpanded4;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCustomExpansionTile(
      String title, String content, bool isExpanded, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border.all(color: Color.fromARGB(255, 230, 228, 228), width: 1.0),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color.fromARGB(255, 27, 58, 87),
                      ),
                    ),
                  ),
                  Icon(
                    isExpanded ? Icons.expand_less : Icons.expand_more,
                    color: Color.fromARGB(255, 27, 58, 87),
                  ),
                ],
              ),
            ),
            if (isExpanded)
              Container(
                color: Color.fromARGB(255, 250, 250, 250),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    content,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color.fromARGB(255, 117, 117, 117),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Faqs(),
  ));
}
