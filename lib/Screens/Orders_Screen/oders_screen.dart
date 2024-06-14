import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Global/constants.dart';
import '../bottom_drawer.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  bool isPressed_1 = false;
  bool isPressed_2 = false;
  bool isPressed_3 = false;
  bool isPressed_4 = false;
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
          IconButton(
            icon: const Icon(
              Icons.shopping_bag_outlined,
            ),
            onPressed: () {
              // Handle add to cart action
            },
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
          padding: const EdgeInsets.only(left: 17, right: 17,bottom: 20),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFF6F8FA),
                        hintText: 'Search',
                        hintStyle: TEXT_STYLE.copyWith(
                          fontSize: SIZE_SM,
                          color: LIT_BOLD,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[600],
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
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
                  const SizedBox(width: 10),
                  Container(
                    decoration: const BoxDecoration(
                      color: BOLD,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.tune,
                        color: Color(0xFFFFFFFF),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return const BottomDrawerContent();
                          },
                        );
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                children: [
                  Text(
                    'Orders',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: Card(
                      color: const Color(0xFFDFDFDF),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color.fromARGB(71, 158, 158, 158),
                        ),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Image.asset('assets/cement_images/image 36.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Dalmia A1 OPC Cement',
                            // textAlign: TextAlign.center,
                            style: TEXT_STYLE.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: BOLD,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'CEMENT, OPC 53 GRADE',
                            textAlign: TextAlign.start,
                            style: TEXT_STYLE.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: LIT_BOLD,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          StarRating(rating: 1),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Delivered on 09 Dec 2024',
                            // textAlign: TextAlign.center,
                            style: TEXT_STYLE.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: LIT_BOLD,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 30,
                        width: 180,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              isPressed_1 ? BOLD : Colors.white,
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
                              isPressed_1 =
                                  !isPressed_1; // Toggle the pressed state
                            });
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             const OtpVerificationScreen()));
                          },
                          child: Text(
                            "Buy Again",
                            style: TEXT_STYLE.copyWith(
                              fontSize: SIZE_SM,
                              fontWeight: FontWeight.w600,
                              color: isPressed_1 ? SECONDARY_COLOR : BOLD,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: Card(
                      color: const Color(0xFFDFDFDF),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color.fromARGB(71, 158, 158, 158),
                        ),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Image.asset('assets/iron_images/image 38.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'TATA Steel -24mm',
                            // textAlign: TextAlign.center,
                            style: TEXT_STYLE.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: BOLD,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Iron steels',
                            textAlign: TextAlign.start,
                            style: TEXT_STYLE.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: LIT_BOLD,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          StarRating(rating: 2),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Delivered on 09 Dec 2024',
                            // textAlign: TextAlign.center,
                            style: TEXT_STYLE.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: LIT_BOLD,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 30,
                        width: 180,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              isPressed_2 ? BOLD : Colors.white,
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
                              isPressed_2 =
                                  !isPressed_2; // Toggle the pressed state
                            });
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             const OtpVerificationScreen()));
                          },
                          child: Text(
                            "Buy Again",
                            style: TEXT_STYLE.copyWith(
                              fontSize: SIZE_SM,
                              fontWeight: FontWeight.w600,
                              color: isPressed_2 ? SECONDARY_COLOR : BOLD,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: Card(
                      color: const Color(0xFFDFDFDF),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color.fromARGB(71, 158, 158, 158),
                        ),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Image.asset('assets/cement_images/image 45.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'ACC A1 OPC Cement',
                            // textAlign: TextAlign.center,
                            style: TEXT_STYLE.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: BOLD,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'CEMENT, OPC 53 GRADE',
                            textAlign: TextAlign.start,
                            style: TEXT_STYLE.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: LIT_BOLD,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          StarRating(rating: 3),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Delivered on 09 Dec 2024',
                            // textAlign: TextAlign.center,
                            style: TEXT_STYLE.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: LIT_BOLD,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 30,
                        width: 180,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              isPressed_3 ? BOLD : Colors.white,
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
                              isPressed_3 =
                                  !isPressed_3; // Toggle the pressed state
                            });
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             const OtpVerificationScreen()));
                          },
                          child: Text(
                            "Buy Again",
                            style: TEXT_STYLE.copyWith(
                              fontSize: SIZE_SM,
                              fontWeight: FontWeight.w600,
                              color: isPressed_3 ? SECONDARY_COLOR : BOLD,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: Card(
                      color: const Color(0xFFDFDFDF),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color.fromARGB(71, 158, 158, 158),
                        ),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Image.asset('assets/iron_images/image 39.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'JSW Steels -16mm',
                            // textAlign: TextAlign.center,
                            style: TEXT_STYLE.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: BOLD,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Steels',
                            textAlign: TextAlign.start,
                            style: TEXT_STYLE.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: LIT_BOLD,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          StarRating(rating: 4),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Delivered on 09 Dec 2024',
                            // textAlign: TextAlign.center,
                            style: TEXT_STYLE.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: LIT_BOLD,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 30,
                        width: 180,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              isPressed_4 ? BOLD : Colors.white,
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
                              isPressed_4 =
                                  !isPressed_4; // Toggle the pressed state
                            });
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             const OtpVerificationScreen()));
                          },
                          child: Text(
                            "Buy Again",
                            style: TEXT_STYLE.copyWith(
                              fontSize: SIZE_SM,
                              fontWeight: FontWeight.w600,
                              color: isPressed_4 ? SECONDARY_COLOR : BOLD,
                            ),
                          ),
                        ),
                      ),
                    ],
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

class StarRating extends StatelessWidget {
  final int rating;
  final double iconSize;

  StarRating({required this.rating, this.iconSize = 24});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        if (index < rating) {
          return Icon(
            Icons.star,
            size: iconSize,
            color: Colors.yellow,
          );
        } else {
          return Icon(
            Icons.star_border,
            size: iconSize,
            color: Colors.grey,
          );
        }
      }),
    );
  }
}
