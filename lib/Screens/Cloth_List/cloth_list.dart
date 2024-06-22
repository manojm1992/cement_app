import 'package:e_com_app/Global/constants.dart';
import 'package:e_com_app/Screens/Cloth_List/productgrid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ClothList extends StatefulWidget {
  const ClothList({super.key});

  @override
  State<ClothList> createState() => _ClothListState();
}

class _ClothListState extends State<ClothList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 24,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.1),
                        shape: BoxShape.circle),
                    child: const Icon(
                      Icons.search,
                      size: 24,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                children: [
                  Text(
                    'Clothes',
                    style: TEXT_STYLE.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Flexible(child: CardsList()),
            ])));
  }
}

class CardsList extends StatelessWidget {
  // Sample data
  final List<Map<String, String>> data = List.generate(
    10,
    (index) => {
      'title': 'Airfoece Jumpman',
      'subtitle': 'vado Odelle Dress',
      'price': '240',
      'imageUrl': 'assets/cement_images/image 31.png',
    },
  );

  CardsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProductGridPage()));
          },
          child: Card(
            color: Colors.white,
            margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
            elevation: 4.0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // Image container
                  Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: const BoxDecoration(
                        // image: DecorationImage(
                        //   image: NetworkImage(data[index]['imageUrl']!),
                        //   fit: BoxFit.cover,
                        // ),
                        // borderRadius: BorderRadius.circular(8.0),
                        ),
                    child: Image.asset(
                      'assets/cement_images/image 32.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width *
                          0.016), // Space between image and texts
                  // Column of texts
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data[index]['title']!,
                          style: TEXT_STYLE.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: LIT_BOLD,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height *
                                0.008), // Space between title and subtitle
                        Text(
                          data[index]['subtitle']!,
                          style: TEXT_STYLE.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: LIT_BOLD,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.008),
                        Text(
                          '\$${data[index]['price']}',
                          style: TEXT_STYLE.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: BOLD,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                      width: 16.0), // Space between texts and forward icon
                  // Forward icon
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.1),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20)),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      iconSize: 15,
                      onPressed: () {
                        // Handle forward icon press
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
