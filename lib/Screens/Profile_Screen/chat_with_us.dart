import 'package:e_com_app/Global/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatWithUs extends StatelessWidget {
  const ChatWithUs({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final paddingHorizontal =
        mediaQuery.width * 0.02; // Adjust this value as needed
    final containerHeight =
        mediaQuery.height * 0.36; // Adjust this value as needed
    final buttonHeight =
        mediaQuery.height * 0.05; // Adjust this value as needed

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
          padding: EdgeInsets.all(paddingHorizontal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: paddingHorizontal),
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
                      vertical: mediaQuery.height * 0.01,
                      horizontal: mediaQuery.width * 0.04,
                    ),
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.02),
              Padding(
                padding: EdgeInsets.only(left: paddingHorizontal),
                child: Text('Let’s take care of this',
                    style: TEXT_STYLE.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
              ),
              SizedBox(height: mediaQuery.height * 0.015),
              Padding(
                padding: EdgeInsets.all(paddingHorizontal),
                child: Text(
                    'Tell us as much you can about the problem, and we will be in touch soon.',
                    style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.w500,
                        color: LIT_BOLD)),
              ),
              SizedBox(height: mediaQuery.height * 0.03),
              Padding(
                padding: EdgeInsets.only(left: paddingHorizontal),
                child: Text('Message',
                    style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.w600,
                        color: BOLD)),
              ),
              SizedBox(height: mediaQuery.height * 0.025),
              Padding(
                padding: EdgeInsets.all(paddingHorizontal),
                child: Container(
                  width: mediaQuery.width * 0.95,
                  height: containerHeight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromARGB(255, 233, 237, 243),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: mediaQuery.width * 0.05),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Hi, I need some help with...',
                          hintStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: LIT_BOLD) // Add your hint text here
                          ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.04),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: paddingHorizontal,
                    vertical: mediaQuery.height * 0.02),
                child: SizedBox(
                  height: buttonHeight,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF1B3A57)),
                      shape: const MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => EmailUs(),
                      //   ),
                      // );
                    },
                    child: Text(
                      'Send Message',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: const Color.fromARGB(255, 251, 250, 250),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
