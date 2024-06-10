import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_com_app/Global/constants.dart';
import 'package:e_com_app/Screens/Favorite_Screen/favorite_screen.dart';
import 'package:e_com_app/Screens/Product_Detail/product_details.dart';
import 'package:e_com_app/Screens/Steel_Screen/steel_screen.dart';
import 'package:e_com_app/Screens/bottom_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List itemColors = [Colors.green, Colors.purple, Colors.blue];
  int currentIndex = 0;
  bool isPressed = false;
  // Change to your default color
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return
        // AdvancedDrawer(
        //   backdrop: Container(
        //     width: double.infinity,
        //     height: double.infinity,
        //     decoration: BoxDecoration(
        //         gradient: LinearGradient(
        //       begin: Alignment.topLeft,
        //       end: Alignment.bottomRight,
        //       colors: [Colors.blueGrey, Colors.blueGrey.withOpacity(0.2)],
        //     )),
        //   ),
        //   controller: _advancedDrawerController,
        //   animationCurve: Curves.easeInOut,
        //   animationDuration: const Duration(milliseconds: 300),
        //   animateChildDecoration: true,
        //   rtlOpening: false,
        //   disabledGestures: false,
        //   childDecoration: const BoxDecoration(
        //       borderRadius: BorderRadius.all(Radius.circular(16))),
        //   // ignore: sort_child_properties_last
        //   child:
        Scaffold(
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
                  constraints: BoxConstraints(
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
      //  AppBar(
      //   leading: IconButton(
      //     onPressed: _handleMenuButtonPressed,
      //     icon: ValueListenableBuilder<AdvancedDrawerValue>(
      //       valueListenable: _advancedDrawerController,
      //       builder: (_, value, __) {
      //         return AnimatedSwitcher(
      //           duration: const Duration(milliseconds: 250),
      //           child: Icon(
      //             value.visible ? Icons.clear : Icons.menu,
      //             key: ValueKey<bool>(value.visible),
      //           ),
      //         );
      //       },
      //     ),
      //   ),
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.favorite_border),
      //       onPressed: () {
      //         Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //                 builder: (context) => const FavoriteScreen()));
      //         // Handle favorite action
      //       },
      //     ),
      //     IconButton(
      //       icon: const Icon(
      //         Icons.add_shopping_cart,
      //       ),
      //       onPressed: () {
      //         // Handle add to cart action
      //       },
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.only(right: 20),
      //       child: CircleAvatar(
      //         child: Image.asset('assets/Menu.png'),
      //       ),
      //     ),
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.only(left: 17, right: 17),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Welcome back,\nSK Cement App',
                    style: TEXT_STYLE.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF202226)),
                  ),
                ],
              ),
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
              SizedBox(
                height: 200,
                width: double.infinity,
                child: CarouselSlider(
                  items: [
                    for (int i = 0; i < itemColors.length; i++)
                      Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          decoration: BoxDecoration(
                            color: BOLD,
                            // color: itemColors[i],
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 2,
                                blurRadius: 8,
                                offset: Offset(4, 4),
                              )
                            ],
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 10),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Best Cements',
                                          style: GoogleFonts.mulish(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Lorem ipsum dolor sit amet,\n consectetur adipisci elit',
                                          style: GoogleFonts.plusJakartaSans(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 26,
                                          width: 89,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              foregroundColor: BOLD,
                                              backgroundColor:
                                                  Colors.white, // Text color
                                              side: const BorderSide(
                                                  color: Colors.white,
                                                  width:
                                                      2.0), // Border color and width
                                              shape:
                                                  const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                            ),
                                            onPressed: () {
                                              // Add your onPressed logic here
                                            },
                                            child: Text(
                                              "View",
                                              style: TEXT_STYLE.copyWith(
                                                fontSize: SIZE_SM,
                                                fontWeight: FontWeight.w500,
                                                color: const Color(
                                                    0xFF1B3A57), // Ensure the text color is BOLD (or white if that's preferred)
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                bottom: 0,
                                right: 0,
                                child: Image(
                                  image: AssetImage('assets/Vector 77.png'),
                                  width: 160,
                                  // height: 120,
                                ),
                              ),
                              const Positioned(
                                bottom: -2, // Adjust the position as needed
                                right: -2, // Adjust the position as needed
                                child: Image(
                                  image: AssetImage('assets/image 69.png'),
                                  width: 140, // Adjust the width as needed
                                  height: 130, // Adjust the height as needed
                                ),
                              ),
                            ],
                          )),
                  ],
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        print(reason.toString());
                        currentIndex = index;
                      });
                    },
                    autoPlay: true,
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
                            : const Color(0xFFE1E1E2),
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
                    'Categories',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 40,
                    width: 170,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(BOLD),
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
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) =>
                        //             const OtpVerificationScreen()));
                      },
                      child: Text(
                        "Cement",
                        style: TEXT_STYLE.copyWith(
                          fontSize: SIZE_SM,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFD3D3D3),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 170,
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SteelScreen(
                                      key: Key('3'),
                                    )));
                      },
                      child: Text(
                        "Steel",
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Popular',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              SizedBox(
                  // width: 200,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7, // Adjust the number of items as needed
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ProductDetailsPage()));
                        },
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: ProductCard(
                            imageList: imageList[index],
                            title: titleList[index],
                            subtitle: subtitleList[index],
                            price: 450.00,
                            isPressed: false,
                            onPressed: () {
                              // Handle button press
                            },
                          ),
                        ),
                      );
                    },
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cement',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.bold,
                      color: LIT_BOLD,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
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
                        child: ProductCard_1(
                          imageList_1: imageList_1[index],
                          title_1: titleList_1[index],
                          subtitle_1: subtitleList_1[index],
                          price: 450.00,
                          isPressed: false,
                          onPressed: () {
                            // Handle button press
                          },
                        ),
                      );
                    },
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Steel',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.bold,
                      color: LIT_BOLD,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
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
                        child: ProductCard_2(
                          imageList_2: imageList_2[index],
                          title_2: titleList_2[index],
                          subtitle_2: subtitleList_2[index],
                          price: 450.00,
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
      ),
    );
    //   drawer: SafeArea(
    //     child: ListTileTheme(
    //       textColor: Colors.white,
    //       iconColor: Colors.white,
    //       child: Column(
    //         mainAxisSize: MainAxisSize.max,
    //         children: [
    //           Container(
    //             width: 128.0,
    //             height: 128.0,
    //             margin: const EdgeInsets.only(
    //               top: 24.0,
    //               bottom: 64.0,
    //             ),
    //             clipBehavior: Clip.antiAlias,
    //             decoration: const BoxDecoration(
    //               color: Colors.black26,
    //               shape: BoxShape.circle,
    //             ),
    //             child: Image.asset('assets/download.png'),
    //           ),
    //           ListTile(
    //             onTap: () {},
    //             leading: const Icon(Icons.home),
    //             title: Text(
    //               'Home',
    //               style: TEXT_STYLE.copyWith(
    //                 fontSize: SIZE_SM,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //           ),
    //           ListTile(
    //             onTap: () {},
    //             leading: const Icon(Icons.account_circle_rounded),
    //             title: Text(
    //               'Profile',
    //               style: TEXT_STYLE.copyWith(
    //                 fontSize: SIZE_SM,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //           ),
    //           ListTile(
    //             onTap: () {},
    //             leading: const Icon(Icons.settings),
    //             title: Text(
    //               'Settings',
    //               style: TEXT_STYLE.copyWith(
    //                 fontSize: SIZE_SM,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //           ),
    //           ListTile(
    //             onTap: () {},
    //             leading: const Icon(Icons.favorite),
    //             title: Text(
    //               'Favourites',
    //               style: TEXT_STYLE.copyWith(
    //                 fontSize: SIZE_SM,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //           ),
    //           const Spacer(),
    //           DefaultTextStyle(
    //             style: const TextStyle(fontSize: 12, color: Colors.white54),
    //             child: Container(
    //               margin: const EdgeInsets.symmetric(
    //                 vertical: 16.0,
    //               ),
    //               child: Text(
    //                 'Terms of service | Privacy policy',
    //                 style: TEXT_STYLE.copyWith(
    //                   fontSize: SIZE_SM,
    //                   fontWeight: FontWeight.bold,
    //                 ),
    //               ),
    //             ),
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}

List<String> imageList = [
  'assets/cement_images/image 31.png',
  'assets/iron_images/image 38.png',
  'assets/iron_images/image 39.png',
  'assets/cement_images/image 32.png',
  'assets/cement_images/image 36.png',
  'assets/cement_images/image 45.png',
  'assets/iron_images/image 38.png',
  'assets/cement_images/image 32.png',
  'assets/iron_images/image 38.png',
];

List<String> titleList = [
  'Ramco A1 OPC Cement',
  'TATA Steel - 24mm',
  'JSW Steel - 16mm',
  'ACC A1 OPC Cement',
  'Birla A1 OPC Cement',
  'ACC A1 OPC Cement',
  'ACC A1 OPC Cement',
  'ACC A1 OPC Cement',
];

List<String> subtitleList = [
  'CEMENT, OPC 53 GRADE',
  'TATA Steels',
  'CEMENT, OPC 53 GRADE',
  'CEMENT, OPC 53 GRADE',
  'TATA Steels',
  'TATA Steels',
  'CEMENT, OPC 53 GRADE',
  'CEMENT, OPC 53 GRADE',
];

class ProductCard extends StatefulWidget {
  final String imageList;
  final String title;
  final String subtitle;
  final double price;
  final bool isPressed;
  final VoidCallback? onPressed;
  const ProductCard({
    Key? key,
    required this.imageList,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.isPressed,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorite = false; // Define isFavorite variable
  bool isPressed = false;

// Now you can use isFavorite
// isFavorite = !isFavorite; // Toggle the value of isFavorite

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 180,
              height: 180,
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
                      padding: const EdgeInsets.all(20),
                      child: Image.asset(
                        widget.imageList,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 5,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(8),
                          child: IconButton(
                            icon: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: isFavorite ? Colors.red : Colors.grey,
                              size: 30,
                            ),
                            onPressed: () {
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
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
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.title,
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
                widget.subtitle,
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
        Padding(
          padding: const EdgeInsets.only(right: 20),
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
                '500.00',
                style: TEXT_STYLE.copyWith(
                  fontSize: SIZE_SM,
                  fontWeight: FontWeight.normal,
                  color: LIT_BOLD,
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
              SizedBox(
                height: 40,
                width: 170,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      isPressed ? BOLD : Colors.white,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        side: BorderSide(color: BOLD, width: 1.0),
                      ),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.bagShopping,
                        size: 20,
                        color: isPressed ? const Color(0xFFD3D3D3) : BOLD,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Add To Cart",
                        style: TEXT_STYLE.copyWith(
                          fontSize: SIZE_SM,
                          fontWeight: FontWeight.w500,
                          color: isPressed ? const Color(0xFFD3D3D3) : BOLD,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ProductCard_1 extends StatefulWidget {
  final String imageList_1;
  final String title_1;
  final String subtitle_1;
  final double price;
  final bool isPressed;
  final VoidCallback? onPressed;
  const ProductCard_1({
    super.key,
    required this.imageList_1,
    required this.title_1,
    required this.subtitle_1,
    required this.price,
    required this.isPressed,
    required this.onPressed,
  });

  @override
  State<ProductCard_1> createState() => _ProductCrd_1State();
}

class _ProductCrd_1State extends State<ProductCard_1> {
  bool isFavorite = false; // Define isFavorite variable
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 180,
              height: 180,
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
                      padding: const EdgeInsets.all(20),
                      child: Image.asset(
                        widget.imageList_1,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 5,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(8),
                          child: IconButton(
                            icon: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: isFavorite ? Colors.red : Colors.grey,
                              size: 30,
                            ),
                            onPressed: () {
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
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
                widget.title_1,
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
                widget.subtitle_1,
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
        Padding(
          padding: const EdgeInsets.only(right: 20),
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
                '500.00',
                style: TEXT_STYLE.copyWith(
                  fontSize: SIZE_SM,
                  fontWeight: FontWeight.normal,
                  color: LIT_BOLD,
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
              SizedBox(
                height: 40,
                width: 170,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      isPressed ? BOLD : Colors.white,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        side: BorderSide(color: BOLD, width: 1.0),
                      ),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.bagShopping,
                        size: 20,
                        color: isPressed ? const Color(0xFFD3D3D3) : BOLD,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Add To Cart",
                        style: TEXT_STYLE.copyWith(
                          fontSize: SIZE_SM,
                          fontWeight: FontWeight.w500,
                          color: isPressed ? const Color(0xFFD3D3D3) : BOLD,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

List<String> imageList_1 = [
  'assets/cement_images/image 31.png',
  'assets/cement_images/image 32.png',
  'assets/cement_images/image 36.png',
  'assets/cement_images/image 45.png',
  'assets/cement_images/image 32.png',
];

List<String> titleList_1 = [
  'Ramco A1 OPC Cement',
  'ACC A1 OPC Cement',
  'Birla A1 OPC Cement',
  'ACC A1 OPC Cement',
  'ACC A1 OPC Cement',
];

List<String> subtitleList_1 = [
  'CEMENT, OPC 53 GRADE',
  'CEMENT, OPC 53 GRADE',
  'CEMENT, OPC 53 GRADE',
  'CEMENT, OPC 53 GRADE',
  'CEMENT, OPC 53 GRADE',
];

class ProductCard_2 extends StatefulWidget {
  final String imageList_2;
  final String title_2;
  final String subtitle_2;
  final double price;
  final bool isPressed;
  final VoidCallback? onPressed;
  const ProductCard_2({
    super.key,
    required this.imageList_2,
    required this.title_2,
    required this.subtitle_2,
    required this.price,
    required this.isPressed,
    required this.onPressed,
  });

  @override
  State<ProductCard_2> createState() => _ProductCard_2State();
}

class _ProductCard_2State extends State<ProductCard_2> {
  bool isFavorite = false; // Define isFavorite variable
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 180,
                height: 180,
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
                        padding: const EdgeInsets.all(20),
                        child: Image.asset(
                          widget.imageList_2,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 5,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(8),
                            child: IconButton(
                              icon: Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: isFavorite ? Colors.red : Colors.grey,
                                size: 30,
                              ),
                              onPressed: () {
                                setState(() {
                                  isFavorite = !isFavorite;
                                });
                              },
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.title_2,
                textAlign: TextAlign.center,
                style: TEXT_STYLE.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: BOLD,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.subtitle_2,
                textAlign: TextAlign.center,
                style: TEXT_STYLE.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: LIT_BOLD,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '₹450.00/KG',
                style: TEXT_STYLE.copyWith(
                  fontSize: SIZE_SM,
                  fontWeight: FontWeight.bold,
                  color: BOLD,
                ),
              ),
              const SizedBox(width: 30),
              Text(
                //'${product.originalPrice}',
                '500.00',
                style: TEXT_STYLE.copyWith(
                  fontSize: SIZE_SM,
                  fontWeight: FontWeight.normal,
                  color: LIT_BOLD,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                width: 170,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      isPressed ? BOLD : Colors.white,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        side: BorderSide(color: BOLD, width: 1.0),
                      ),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.bagShopping,
                        size: 20,
                        color: isPressed ? const Color(0xFFD3D3D3) : BOLD,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Add To Cart",
                        style: TEXT_STYLE.copyWith(
                          fontSize: SIZE_SM,
                          fontWeight: FontWeight.w500,
                          color: isPressed ? const Color(0xFFD3D3D3) : BOLD,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

List<String> imageList_2 = [
  'assets/iron_images/image 38.png',
  'assets/iron_images/image 39.png',
  'assets/iron_images/image 39.png',
  'assets/iron_images/image 39.png',
  'assets/iron_images/image 39.png',
];

List<String> titleList_2 = [
  'TATA Steel - 24mm',
  'JSW Steel - 16mm',
  'JSW Steel - 16mm',
  'TATA Steel - 24mm',
  'JSW Steel - 16mm',
];

List<String> subtitleList_2 = [
  'TATA Steels',
  'TATA Steels',
  'TATA Steels',
  'TATA Steels',
  'TATA Steels',
];
