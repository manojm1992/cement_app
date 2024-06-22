import 'package:e_com_app/Screens/Cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:e_com_app/Screens/Cart/cart_model.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool
      showBackButton; // This flag controls the visibility of the back button

  const CommonAppBar({
    Key? key,
    required this.title,
    this.showBackButton = true, // Default is true to show the back button
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context);

    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading:
          false, // Set to false to control leading manually
      title: Row(
        children: [
          // if (showBackButton) ...[
          //   IconButton(
          //     icon: Icon(Icons.arrow_back_ios),
          //     onPressed: () {
          //       Navigator.of(context).pop();
          //     },
          //   ),
          // ],
          CircleAvatar(
            child:
                Image.asset('assets/logoo.png'), // Replace with your logo path
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.favorite_border),
          onPressed: () {
            // Handle favorite action
          },
        ),
        Stack(
          children: [
            IconButton(
              icon: Icon(Icons.shopping_bag_outlined),
              onPressed: () {
                Navigator.push((context),
                    MaterialPageRoute(builder: (context) => CartPage()));
              },
            ),
            Positioned(
              right: 5,
              top: 5,
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                constraints: BoxConstraints(
                  minWidth: 20,
                  minHeight: 20,
                ),
                child: Center(
                  child: Text(
                    '${cart.itemCount}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: CircleAvatar(
            child: Image.asset(
                'assets/Menu.png'), // Replace with your profile image
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
