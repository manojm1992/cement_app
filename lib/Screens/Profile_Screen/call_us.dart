import 'package:e_com_app/Global/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CallUs extends StatelessWidget {
  const CallUs({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final paddingHorizontal =
        mediaQuery.width * 0.04; // Adjust this value as needed
    final containerHeight =
        mediaQuery.height * 0.1; // Adjust this value as needed
    final iconSize = mediaQuery.width * 0.1; // Adjust this value as needed

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
          padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: mediaQuery.height * 0.02),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 246, 248, 250),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.normal),
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27.0),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 233, 237, 243)
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
                    contentPadding: EdgeInsets.symmetric(
                      vertical: mediaQuery.height * 0.01,
                      horizontal: mediaQuery.width * 0.04,
                    ),
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.04),
              Text('Talk to our Team',
                  style: TEXT_STYLE.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
              SizedBox(height: mediaQuery.height * 0.02),
              Text(
                  'Tell your assistant as much as you can about the issue and we will connect you to the right person.',
                  style: TEXT_STYLE.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: LIT_BOLD)),
              SizedBox(height: mediaQuery.height * 0.04),
              Text(
                'Contact',
                style: TEXT_STYLE.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: BOLD,
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.02),
              Container(
                width: double.infinity,
                height: containerHeight,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 246, 246, 246),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: mediaQuery.height * 0.02),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.call_outlined,
                            color: Colors.grey,
                            size: iconSize,
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('+9876543210',
                              style: TEXT_STYLE.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: BOLD)),
                          SizedBox(height: mediaQuery.height * 0.005),
                          Text('Available Mon - Fri  8am - 7pm',
                              style: TEXT_STYLE.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: LIT_BOLD)),
                        ],
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => CallUs()));
                          // Navigate to the next page
                        },
                        child: Padding(
                          padding:
                              EdgeInsets.only(top: mediaQuery.height * 0.015),
                          child: const Icon(
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
