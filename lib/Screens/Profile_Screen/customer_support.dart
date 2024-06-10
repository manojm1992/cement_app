import 'package:e_com_app/Global/constants.dart';
import 'package:e_com_app/Screens/Profile_Screen/call_us.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'chat_with_us.dart';
import 'email_us.dart';

class CustomerSupport extends StatelessWidget {
  const CustomerSupport({super.key});

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
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
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
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Text('Customer Support',
                    style: TEXT_STYLE.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 12, right: 12),
                child: Text('Talk to our team',
                    style: TEXT_STYLE.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 12, right: 12),
                child: SizedBox(
                  width: double.infinity,
                  height: 215,
                  child: Image.asset(
                      'assets/animations/Confident call center operator talking with client (1).png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 15),
                child: Text('Recommended',
                    style: TEXT_STYLE.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: BOLD)),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              // radius: 30,
                              child: Icon(
                                Icons.chat,
                                color: Colors.grey,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Chat With Us',
                              style: TEXT_STYLE.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: BOLD)),
                          const SizedBox(height: 8),
                          Text('We usually reply in 1-2 minutes',
                              style: TEXT_STYLE.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: LIT_BOLD)),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatWithUs()),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Other Options',
                  style: TEXT_STYLE.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w600, color: BOLD),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Icon(
                              Icons.email,
                              color: Colors.grey,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email us',
                            style: TEXT_STYLE.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: BOLD),
                          ),
                          const SizedBox(height: 8),
                          Text('we will respond in 1 working day',
                              style: TEXT_STYLE.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: LIT_BOLD)),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EmailUs()));
                          // Navigate to the next page
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Icon(
                              Icons.call_outlined,
                              color: Colors.grey,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Call us',
                            style: TEXT_STYLE.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: BOLD),
                          ),
                          const SizedBox(height: 8),
                          Text('Available Mon - Fri 8am - 7pm',
                              style: TEXT_STYLE.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: LIT_BOLD)),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the next page
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CallUs()),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
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
