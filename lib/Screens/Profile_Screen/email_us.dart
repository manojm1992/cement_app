import 'package:e_com_app/Global/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailUs extends StatelessWidget {
  const EmailUs({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final paddingHorizontal = mediaQuery.width * 0.04; // Adjust as needed
    final paddingVertical = mediaQuery.height * 0.02; // Adjust as needed
    final contentPaddingHorizontal = mediaQuery.width * 0.03;
    final contentPaddingVertical = mediaQuery.height * 0.012;
    final iconSize = mediaQuery.height * 0.05;
    final containerHeight = mediaQuery.height * 0.1;

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
                padding: EdgeInsets.only(top: paddingVertical),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 246, 248, 250),
                    hintText: 'Search',
                    hintStyle: const TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.normal),
                    prefixIcon: const Icon(Icons.search),
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
                      vertical: contentPaddingVertical,
                      horizontal: contentPaddingHorizontal,
                    ),
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.04),
              Text('Let’s take care of this',
                  style: TEXT_STYLE.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
              SizedBox(height: mediaQuery.height * 0.02),
              Text(
                  'Tell us as much as you can about the problem, and we will be in touch soon.',
                  style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w500,
                      color: LIT_BOLD)),
              SizedBox(height: mediaQuery.height * 0.04),
              Text('Mail us',
                  style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w600,
                      color: BOLD)),
              SizedBox(height: mediaQuery.height * 0.02),
              Container(
                width: double.infinity,
                height: containerHeight,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 246, 246, 246),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: paddingHorizontal,
                      vertical: paddingVertical * 0.7),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                        size: iconSize,
                      ),
                      SizedBox(width: mediaQuery.width * 0.04),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('skcements@gmail.com',
                              style: TEXT_STYLE.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: BOLD,
                              )),
                          SizedBox(height: mediaQuery.height * 0.01),
                          Text('we will respond in 1 working day',
                              style: TEXT_STYLE.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: LIT_BOLD,
                              )),
                        ],
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          // Handle tap event
                        },
                        child: Padding(
                          padding:
                              EdgeInsets.only(top: mediaQuery.height * 0.01),
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
