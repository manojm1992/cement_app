import 'package:e_com_app/Provider/Favorite_Model/favoriteCard.dart';
import 'package:e_com_app/Provider/Favorite_Model/favorite_model.dart';
import 'package:e_com_app/Screens/Profile_Screen/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);
    // final isFavorite = favoritesProvider.isFavorite(widget.);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,size: 22,),
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
              // Navigator.push(context, MaterialPageRoute(builder: (context)=> FavoriteScreen()));
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
            child: GestureDetector(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const ProfilePage()));
              },
              child: CircleAvatar(
                child: Image.asset('assets/Menu.png'),
              ),
            ),
          ),
        ],
      ),
       body: Consumer<FavoritesProvider>(
        builder: (context, favoritesProvider, child) {
      return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of items per row
          crossAxisSpacing: 10.0, // Space between items horizontally
          mainAxisSpacing: 10.0, // Space between items vertically
          childAspectRatio: 0.75, // Aspect ratio of the items
        ),
        itemCount: favoritesProvider.favorites.length,
        itemBuilder: (context, index) {
          final favorite = favoritesProvider.favorites[index];
          return FavoriteCard(favorite: favorite);
        },
      );
    },
    ),
    );
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
