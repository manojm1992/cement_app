import 'package:e_com_app/Screens/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/utils.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Global/constants.dart';

class BottomDrawerContent extends StatefulWidget {
  const BottomDrawerContent({super.key});

  @override
  State<BottomDrawerContent> createState() => _BottomDrawerContentState();
}

class _BottomDrawerContentState extends State<BottomDrawerContent> {
  final BottomDrawerContentController _controller =
      Get.put(BottomDrawerContentController());
  bool _isExpanded = false;

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 17, right: 17, top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Center(
                    child: Icon(
                      Icons.cancel_outlined, // Set the icon here
                      color: BOLD,
                      size: 24,
                    ),
                  ),
                  Text(
                    'Filters',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.bold,
                      color: BOLD,
                    ),
                  ),
                  Text(
                    'Clear all',
                    style: GoogleFonts.lato(
                      textStyle: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.normal,
                        color: BOLD,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Container(
                width: 400,
                height: 310,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromRGBO(230, 228, 228, 1), width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: faqItems.length,
                            itemBuilder: (context, index) {
                              final faqItem = faqItems[index];
                              if (_controller.searchQuery.isNotEmpty &&
                                  !faqItem.title.toLowerCase().contains(
                                      _controller.searchQuery.toLowerCase())) {
                                return const SizedBox.shrink();
                              }
                              return FAQButton(
                                title: faqItem.title,
                                description: faqItem.description,
                              );
                            },
                          ),
                        ),

                        // const Divider(
                        //   color: DIVIDER,
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text(
                        //       'Type of Cement',
                        //       style: TEXT_STYLE.copyWith(
                        //         fontSize: SIZE_SM,
                        //         fontWeight: FontWeight.w500,
                        //         color: LIT_BOLD,
                        //       ),
                        //     ),
                        //     IconButton(
                        //         onPressed: () {},
                        //         icon: const Icon(
                        //           Icons.arrow_forward_ios,
                        //           color: Profile_Icon_IOS,
                        //           size: 18,
                        //         ))
                        //   ],
                        // ),
                        // const Divider(
                        //   color: DIVIDER,
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text(
                        //       'Grade',
                        //       style: TEXT_STYLE.copyWith(
                        //         fontSize: SIZE_SM,
                        //         fontWeight: FontWeight.w500,
                        //         color: LIT_BOLD,
                        //       ),
                        //     ),
                        //     IconButton(
                        //         onPressed: () {},
                        //         icon: const Icon(
                        //           Icons.arrow_forward_ios,
                        //           color: Profile_Icon_IOS,
                        //           size: 18,
                        //         ))
                        //   ],
                        // ),
                        // const Divider(
                        //   color: DIVIDER,
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text(
                        //       'Packaging',
                        //       style: TEXT_STYLE.copyWith(
                        //         fontSize: SIZE_SM,
                        //         fontWeight: FontWeight.w500,
                        //         color: LIT_BOLD,
                        //       ),
                        //     ),
                        //     IconButton(
                        //         onPressed: () {},
                        //         icon: const Icon(
                        //           Icons.arrow_forward_ios,
                        //           color: Profile_Icon_IOS,
                        //           size: 18,
                        //         ))
                        //   ],
                        // ),
                        // const Divider(
                        //   color: DIVIDER,
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text(
                        //       'Brand',
                        //       style: TEXT_STYLE.copyWith(
                        //         fontSize: SIZE_SM,
                        //         fontWeight: FontWeight.w500,
                        //         color: LIT_BOLD,
                        //       ),
                        //     ),
                        //     IconButton(
                        //         onPressed: () {},
                        //         icon: const Icon(
                        //           Icons.arrow_forward_ios,
                        //           color: Profile_Icon_IOS,
                        //           size: 18,
                        //         ))
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      isPressed ? BOLD : Colors.white,
                    ),
                    shape: const MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                    side: MaterialStateProperty.all<BorderSide>(
                      const BorderSide(color: BOLD, width: 1.0),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      isPressed = !isPressed; // Toggle the pressed state
                    });
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) =>
                    //             const OtpVerificationScreen()));
                  },
                  child: Text(
                    "Apply Filter",
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w600,
                      color: isPressed ? Colors.white : BOLD,
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

class FAQButton extends StatefulWidget {
  final String title;
  final String description;

  const FAQButton({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  State<FAQButton> createState() => _FAQButtonState();
}

class _FAQButtonState extends State<FAQButton> {
  bool _showDescription = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shadowColor: const Color(0XFFE9E9E9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(
              color: Color(0XFFE9E9E9),
            ),
          ),
          surfaceTintColor: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _showDescription = !_showDescription;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.title,
                        style: GoogleFonts.poppins(
                          fontSize: SIZE_SM,
                          fontWeight: FontWeight.w600,
                          color:
                              _showDescription ? BOLD : const Color(0XFF686868),
                        ),
                      ),
                      Icon(
                        _showDescription
                            ? Icons.keyboard_arrow_down_outlined
                            : Icons.arrow_forward_ios_rounded,
                        size: 18,
                        color:
                            _showDescription ? BOLD : const Color(0XFF686868),
                      ),
                    ],
                  ),
                ),
                if (_showDescription)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      const Divider(color: LIT_BOLD),
                      // const SizedBox(height: 10),
                      Text(
                        widget.description,
                        style: GoogleFonts.poppins(
                          fontSize: SIZE_SM,
                          fontWeight: FontWeight.w500,
                          color: const Color(0XFF858585),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class FAQItem {
  final String title;
  final String description;

  FAQItem({
    required this.title,
    required this.description,
  });
}

List<FAQItem> faqItems = [
  FAQItem(
    title: 'Price',
    description: '',
  ),
  FAQItem(
    title: 'Type of Cement',
    description: 'PPC Cement \nPSC Cement \nSuper Grade Cement',
  ),
  FAQItem(
    title: 'Grade',
    description: '33 Grade Cement \n43 Grade Cement \n53 Grade Cement ',
  ),
  FAQItem(
    title: 'Packaging ',
    description: 'ACC \npaper bags',
  ),
  FAQItem(
    title: 'Brand ',
    description: 'ACC \nUltra Tech\n shriram cement\n Ramco\n JSW',
  ),
];
