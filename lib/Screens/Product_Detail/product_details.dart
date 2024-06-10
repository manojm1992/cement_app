import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_com_app/Global/constants.dart';
import 'package:e_com_app/Screens/Bottom_Nav_Bar/bottom_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Cart/cart.dart';
import '../Shipping/shipping_delivery.dart';
import '../Vochure_Promo_Code/vochure_promo.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetailsPage> {
  final int rating = 4; // Number of stars for the rating

  List itemColors = [Colors.green, Colors.purple, Colors.blue];
  int currentIndex = 0;
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
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 17, right: 17),
          child: SingleChildScrollView(
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
                          // border: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(20.0),
                          //   borderSide: BorderSide(
                          //     color: Colors.grey.withOpacity(0.5),
                          //   ),
                          // ),
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
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.030,
                ),
                Row(
                  children: [
                    Text(
                      'Product Details',
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.030,
                // ),
                SizedBox(
                  height: 240,
                  width: double.infinity,
                  child: CarouselSlider(
                    items: [
                      for (int i = 0; i < itemColors.length; i++)
                        Container(
                            alignment: Alignment.center,
                            // margin: const EdgeInsets.symmetric(
                            //     horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                              // color: BOLD,
                              // color: itemColors[i],
                              borderRadius: BorderRadius.circular(15),
                              // boxShadow: const [
                              //   BoxShadow(
                              //     color: Colors.grey,
                              //     spreadRadius: 2,
                              //     blurRadius: 8,
                              //     offset: Offset(4, 4),
                              //   )
                              // ],
                            ),
                            child: SizedBox(
                              width: 207,
                              height: 205,
                              // color: Colors.blueAccent,
                              child: Image.asset(
                                  'assets/cement_images/image 30.png'),
                            )),
                    ],
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          print(reason.toString());
                          currentIndex = index;
                        });
                      },
                      autoPlay: false,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < itemColors.length; i++)
                      Container(
                        height: 6,
                        width: currentIndex == i ? 30 : 8,
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: currentIndex == i
                              ? const Color(0xFF1B3A57)
                              : const Color(0xFF1B3A57),
                        ),
                      ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.030,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ramco A1 OPC Cement',
                      style: TEXT_STYLE.copyWith(
                          fontSize: SIZE_SM,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF202226)),
                    ),
                    Row(
                      children: List.generate(5, (index) {
                        return Icon(
                          size: 17,
                          index < rating ? Icons.star : Icons.star_border,
                          color: const Color(0xFFFFD700),
                        );
                      }),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'CEMENT OPC 53 GRADE ',
                      style: TEXT_STYLE.copyWith(
                          fontSize: SIZE_SM,
                          fontWeight: FontWeight.w400,
                          color: LIT_BOLD),
                    ),
                    Row(children: [
                      Text(
                        '45 Reviews',
                        style: TEXT_STYLE.copyWith(
                            fontSize: SIZE_SM,
                            fontWeight: FontWeight.w400,
                            color: LIT_BOLD),
                      ),
                    ]),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    'Availability:',
                    style: TEXT_STYLE.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: LIT_BOLD),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.020,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Container pressed!');
                    },
                    child: Container(
                      width: 64,
                      height: 22,
                      decoration: BoxDecoration(
                        color: BOLD,
                        border: Border.all(
                          color: Colors.black, // Border color
                          width: 1, // Border width
                        ),
                        borderRadius:
                            BorderRadius.circular(8), // Optional: border radius
                      ),
                      child: Center(
                        child: Text(
                          'In Stock',
                          style: TEXT_STYLE.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFFD3D3D3)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.020,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Container pressed!');
                    },
                    child: Container(
                      width: 89,
                      height: 22,
                      decoration: BoxDecoration(
                        // color: BOLD,
                        border: Border.all(
                          color: const Color(0xFF1B3A57), // Border color
                          width: 1, // Border width
                        ),
                        borderRadius:
                            BorderRadius.circular(8), // Optional: border radius
                      ),
                      child: Center(
                        child: Text(
                          'Out of Stock',
                          style: TEXT_STYLE.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF1B3A57)),
                        ),
                      ),
                    ),
                  ),
                ]),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                Row(
                  children: [
                    Text(
                      'M.R.P    ₹500.00',
                      style: TEXT_STYLE.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: LIT_BOLD),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                Row(
                  children: [
                    Text(
                      'Sale price',
                      style: TEXT_STYLE.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: BOLD),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.020,
                    ),
                    Text(
                      ' ₹450.00 Per Bag',
                      style: TEXT_STYLE.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: BOLD),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.020,
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Container pressed!');
                      },
                      child: Container(
                        width: 64,
                        height: 22,
                        decoration: BoxDecoration(
                          color: BOLD,
                          border: Border.all(
                            color: Colors.black, // Border color
                            width: 1, // Border width
                          ),
                          borderRadius: BorderRadius.circular(
                              8), // Optional: border radius
                        ),
                        child: Center(
                          child: Text(
                            '30% off',
                            style: TEXT_STYLE.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFD3D3D3)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                Row(
                  children: [
                    Text(
                      '*Inclusive of all Taxes',
                      style: TEXT_STYLE.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFE33E3E)),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        'Prices Displayed are per 50 KG Bag. Free Shipping for orders above 50 Bags Unloading Charges Extra as applicable',
                        style: TEXT_STYLE.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: LIT_BOLD),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: VochurePromoPage(),
                              actions: [
                                // TextButton(
                                //   onPressed: () {
                                //     Navigator.pop(context);
                                //   },
                                //   child: Text('Close'),
                                // ),
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
                        width: 280,
                        height: 53,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFD3D3D3), // Border color
                            width: 1, // Border width
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 3),
                                  child: CircleAvatar(
                                    child: Image.asset('assets/Group.png'),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.030,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Voucher Promo',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.010,
                                  ),
                                  Flexible(
                                    child: Text(
                                      'There are 2 promo codes for you',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.grey,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                Row(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'Qty:',
                      style: TEXT_STYLE.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: BOLD),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.030,
                    ),
                    Container(
                        width: 140,
                        height: 42,
                        decoration: BoxDecoration(
                          // color: BOLD,
                          border: Border.all(
                            color: const Color(0xFFD3D3D3), // Border color
                            width: 1, // Border width
                          ),
                          borderRadius: BorderRadius.circular(
                              14), // Optional: border radius
                        ),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.remove)),
                            // SizedBox(
                            //   width: MediaQuery.of(context).size.width * 0.010,
                            // ),
                            Container(
                              width: 40,
                              height: 36,
                              decoration: BoxDecoration(
                                // color: BOLD,
                                border: Border.all(
                                  color:
                                      const Color(0xFFD3D3D3), // Border color
                                  width: 1, // Border width
                                ),
                                borderRadius: BorderRadius.circular(
                                    14), // Optional: border radius
                              ),
                              child: Center(
                                child: Text('0',
                                    style: TEXT_STYLE.copyWith(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xFF000000))),
                              ),
                            ),
                            IconButton(
                                onPressed: () {}, icon: const Icon(Icons.add))
                          ],
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.030,
                    ),
                    Flexible(
                      child: Text(
                        'Minimum Order Qty: 200 Bags',
                        style: TEXT_STYLE.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: LIT_BOLD),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
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
                              builder: (context) => const CartPage()));
                    },
                    child: Text(
                      "Add to Cart",
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.w600,
                        color: BOLD,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(BOLD),
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
                              builder: (context) => const ShippingPage()));
                    },
                    child: Text(
                      "Proceed to Checkout",
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.010,
                ),
                Row(
                  children: [
                    Text(
                      "Additional info",
                      style: TEXT_STYLE.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: BOLD,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Weight",
                              style: TEXT_STYLE.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: BOLD,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.050,
                            ),
                            Text(
                              "50Kg",
                              style: TEXT_STYLE.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: LIT_BOLD,
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                          thickness: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Made In ",
                              style: TEXT_STYLE.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: BOLD,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.030,
                            ),
                            Text(
                              "India",
                              style: TEXT_STYLE.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: LIT_BOLD,
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                          thickness: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Material ",
                              style: TEXT_STYLE.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: BOLD,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.030,
                            ),
                            Text(
                              "PSS Cement",
                              style: TEXT_STYLE.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: LIT_BOLD,
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                          thickness: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "HSN ",
                              style: TEXT_STYLE.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: BOLD,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.090,
                            ),
                            Text(
                              "2523",
                              style: TEXT_STYLE.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: LIT_BOLD,
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                          thickness: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Size ",
                              style: TEXT_STYLE.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: BOLD,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.090,
                            ),
                            Text(
                              "50kg",
                              style: TEXT_STYLE.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: LIT_BOLD,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.090,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Dimensions",
                              style: TEXT_STYLE.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: BOLD,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.050,
                            ),
                            Text(
                              "73*60*30 cm",
                              style: TEXT_STYLE.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: LIT_BOLD,
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                          thickness: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Brand",
                              style: TEXT_STYLE.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: BOLD,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.15,
                            ),
                            Text(
                              "Dalmia",
                              style: TEXT_STYLE.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: LIT_BOLD,
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                          thickness: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sub category ",
                              style: TEXT_STYLE.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: BOLD,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.030,
                            ),
                            Text(
                              "Grey Cement",
                              style: TEXT_STYLE.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: LIT_BOLD,
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.black,
                          thickness: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Packaging ",
                              style: TEXT_STYLE.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: BOLD,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.080,
                            ),
                            Text(
                              "Paper Bag",
                              style: TEXT_STYLE.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: LIT_BOLD,
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.white,
                          thickness: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Color ",
                              style: TEXT_STYLE.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: BOLD,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.17,
                            ),
                            Text(
                              "Gray",
                              style: TEXT_STYLE.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: LIT_BOLD,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Product Details",
                      style: TEXT_STYLE.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: BOLD,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                    Text(
                      "+ More",
                      style: TEXT_STYLE.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF001F3F),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Benefits of Dalmia A1 Cement",
                      style: TEXT_STYLE.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF50555C),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                ),
                const PointsList(),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Related products",
                      style: TEXT_STYLE.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: BOLD,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                ),
                SizedBox(
                    // width: 200,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5, // Adjust the number of items as needed
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: ProductCard_1_2(
                            imageList_1_2: imageList_1_2[index],
                            title_1_2: titleList_1_2[index],
                            subtitle_1_2: subtitleList_1_2[index],
                            isPressed: false,
                            onPressed: () {
                              // Handle button press
                            },
                          ),
                        );
                      },
                    )),
              ],
            ),
          ),
        )));
  }
}

class PointsList extends StatelessWidget {
  const PointsList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> points = [
      "Highly Earthy Strength",
      "Faster Setting Time",
      "Denser Concrete",
      "Crack Resistant",
      "Corrosion Inhibitor",
      "PST ( Pressure Sustaining Technology )",
    ];

    return Column(
      children: points.map((point) {
        return Column(
          children: [
            Row(
              children: [
                Text(
                  "\u2022 ", // Unicode for bullet point
                  style: TEXT_STYLE.copyWith(
                    fontSize: SIZE_SM,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF50555C),
                  ),
                ),
                Expanded(
                  child: Text(
                    point,
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF50555C),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
          ],
        );
      }).toList(),
    );
  }
}

class ProductCard_1_2 extends StatefulWidget {
  final String imageList_1_2;
  final String title_1_2;
  final String subtitle_1_2;

  final bool isPressed;
  final VoidCallback? onPressed;
  const ProductCard_1_2({
    super.key,
    required this.imageList_1_2,
    required this.title_1_2,
    required this.subtitle_1_2,
    required this.isPressed,
    required this.onPressed,
  });

  @override
  State<ProductCard_1_2> createState() => _ProductCrd_1_2State();
}

class _ProductCrd_1_2State extends State<ProductCard_1_2> {
  bool isFavorite = false; // Define isFavorite variable
  bool isPressed = false;
  bool isPressed_1 = false;
  bool isPressed_2 = false;
  bool isPressed_3 = false;
  bool isPressed_4 = false;
  final int rating = 4;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 176,
              height: 195,
              child: Stack(
                children: [
                  Card(
                    color: const Color(0xFFDFDFDF),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Color.fromARGB(71, 158, 158, 158),
                      ),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Image.asset(
                        widget.imageList_1_2,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 4,
                    top: 4,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {
                          print('Container pressed!');
                        },
                        child: Container(
                          width: 48,
                          height: 22,
                          decoration: BoxDecoration(
                            color: const Color(0xFFC41212),
                            border: Border.all(
                                // color: Colors.black, // Border color
                                // width: 1, // Border width
                                ),
                            borderRadius: BorderRadius.circular(
                                5), // Optional: border radius
                          ),
                          child: Center(
                            child: Text(
                              '-30%',
                              style: TEXT_STYLE.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: SECONDARY_COLOR),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.title_1_2,
                textAlign: TextAlign.center,
                style: TEXT_STYLE.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: BOLD,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.subtitle_1_2,
                textAlign: TextAlign.center,
                style: TEXT_STYLE.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: LIT_BOLD,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            print('Container pressed!');
          },
          child: Container(
            width: 64,
            height: 22,
            decoration: BoxDecoration(
              color: BOLD,
              border: Border.all(
                color: Colors.black, // Border color
                width: 1, // Border width
              ),
              borderRadius: BorderRadius.circular(8), // Optional: border radius
            ),
            child: Center(
              child: Text(
                'In Stock',
                style: TEXT_STYLE.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFFD3D3D3)),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: List.generate(5, (index) {
            return Icon(
              size: 17,
              index < rating ? Icons.star : Icons.star_border,
              color: const Color(0xFFFFD700),
            );
          }),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '₹450.00',
                style: TEXT_STYLE.copyWith(
                  fontSize: SIZE_SM,
                  fontWeight: FontWeight.bold,
                  color: BOLD,
                ),
              ),
              const SizedBox(width: 50),
              Text(
                //'${product.originalPrice}',
                '₹600.00',
                style: TEXT_STYLE.copyWith(
                  fontSize: SIZE_SM,
                  fontWeight: FontWeight.normal,
                  color: LIT_BOLD,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

List<String> imageList_1_2 = [
  'assets/cement_images/image 31.png',
  'assets/cement_images/image 32.png',
  'assets/cement_images/image 36.png',
  'assets/cement_images/image 45.png',
  'assets/cement_images/image 32.png',
];

List<String> titleList_1_2 = [
  'Ramco A1 OPC Cement',
  'ACC A1 OPC Cement',
  'Birla A1 OPC Cement',
  'ACC A1 OPC Cement',
  'ACC A1 OPC Cement',
];

List<String> subtitleList_1_2 = [
  'CEMENT, OPC 53 GRADE',
  'CEMENT, OPC 53 GRADE',
  'CEMENT, OPC 53 GRADE',
  'CEMENT, OPC 53 GRADE',
  'CEMENT, OPC 53 GRADE',
];
