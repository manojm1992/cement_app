import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Global/constants.dart';
import '../bottom_drawer.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool isPressed = false;

  bool _isChecked_1 = false;
  bool _isChecked_2 = false;
  bool _isChecked_3 = false;
  bool _isChecked_4 = false;
  bool _isChecked_5 = false;
  bool _showError = false;
  void _validatePincode(String value) {
    setState(() {
      // Simple validation logic
      _showError = value.isNotEmpty &&
          value != '1234'; // Replace '1234' with your correct pincode
    });
  }

  TextEditingController _pincodeController =
      TextEditingController(); // Controller for the pincode TextField
  void dispose() {
    _pincodeController
        .dispose(); // Dispose the pincode controller when the widget is disposed
    super.dispose();
  }

  bool? _radioValue = false;
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
          padding: const EdgeInsets.only(left: 17, right: 17),
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
                    'Cart',
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
              Container(
                width: 400,
                height: 170,
                decoration: BoxDecoration(
                  // color: Colors.grey, // Background color
                  border: Border.all(
                    color:
                        const Color.fromRGBO(230, 228, 228, 1), // Border color
                    width: 2, // Border width
                  ),
                  borderRadius: BorderRadius.circular(15), // Curved corners
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Code',
                            style: TEXT_STYLE.copyWith(
                              fontSize: SIZE_SM,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        children: [
                          Radio(
                            value: true,
                            groupValue:
                                _radioValue, // Provide the appropriate group value
                            onChanged: (bool? value) {
                              setState(() {
                                _radioValue = value!;
                              });
                            },
                          ),
                          Text(
                            'Pincode',
                            style: TEXT_STYLE.copyWith(
                              fontSize: SIZE_SM,
                              fontWeight: FontWeight.bold,
                              color: LIT_BOLD,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          SizedBox(
                            width: 200,
                            height: 50,
                            child: TextField(
                              controller: _pincodeController,
                              onChanged:
                                  _validatePincode, // Validate pincode on change
                              decoration: InputDecoration(
                                labelStyle: TEXT_STYLE.copyWith(
                                  fontSize: SIZE_SM,
                                  fontWeight: FontWeight.bold,
                                  color: LIT_BOLD,
                                ),
                                labelText: 'Enter Pincode',
                                border: const OutlineInputBorder(),
                                errorText: _showError
                                    ? 'Invalid pincode'
                                    : null, // Show error if pincode is invalid
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Total value -1,00,000',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    value: _isChecked_1,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked_1 = value!;
                      });
                    },
                    shape: OutlinedBorder.lerp(const CircleBorder(),
                        const RoundedRectangleBorder(), 0.5),
                    activeColor: BOLD,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 130,
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
                                padding: const EdgeInsets.all(15),
                                child: Image.asset(
                                  'assets/cement_images/image 32.png',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 63),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dalmia A1 OPC Cement',
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
                              'CEMENT OPC 53 GRADE',
                              style: TEXT_STYLE.copyWith(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: LIT_BOLD,
                              ),
                            ),
                          ],
                        ),
                        Row(
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
                            const SizedBox(width: 25),
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
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  SizedBox(
                    // width: 100,
                    height: 40,
                    child: Card(
                      color: const Color(0xFFDFDFDF),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color.fromARGB(71, 158, 158, 158),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.remove,
                            ),
                            onPressed: () {
                              // Add your decrement logic here
                            },
                          ),
                          Text(
                            '100', // Replace with your quantity variable
                            style: TEXT_STYLE.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: BOLD,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              // Add your increment logic here
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    value: _isChecked_2,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked_2 = value!;
                      });
                    },
                    shape: OutlinedBorder.lerp(const CircleBorder(),
                        const RoundedRectangleBorder(), 0.5),
                    activeColor: BOLD,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 130,
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
                                padding: const EdgeInsets.all(15),
                                child: Image.asset(
                                  'assets/cement_images/image 31 copy.png',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 63),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dalmia A1 OPC Cement',
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
                              'CEMENT OPC 53 GRADE',
                              style: TEXT_STYLE.copyWith(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: LIT_BOLD,
                              ),
                            ),
                          ],
                        ),
                        Row(
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
                            const SizedBox(width: 25),
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
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  SizedBox(
                    // width: 100,
                    height: 40,
                    child: Card(
                      color: const Color(0xFFDFDFDF),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color.fromARGB(71, 158, 158, 158),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.remove,
                            ),
                            onPressed: () {
                              // Add your decrement logic here
                            },
                          ),
                          Text(
                            '100', // Replace with your quantity variable
                            style: TEXT_STYLE.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: BOLD,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              // Add your increment logic here
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    value: _isChecked_3,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked_3 = value!;
                      });
                    },
                    shape: OutlinedBorder.lerp(const CircleBorder(),
                        const RoundedRectangleBorder(), 0.5),
                    activeColor: BOLD,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 130,
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
                                padding: const EdgeInsets.all(15),
                                child: Image.asset(
                                  'assets/cement_images/image 36.png',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 63),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dalmia A1 OPC Cement',
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
                              'CEMENT OPC 53 GRADE',
                              style: TEXT_STYLE.copyWith(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: LIT_BOLD,
                              ),
                            ),
                          ],
                        ),
                        Row(
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
                            const SizedBox(width: 25),
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
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  SizedBox(
                    // width: 100,
                    height: 40,
                    child: Card(
                      color: const Color(0xFFDFDFDF),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color.fromARGB(71, 158, 158, 158),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.remove,
                            ),
                            onPressed: () {
                              // Add your decrement logic here
                            },
                          ),
                          Text(
                            '100', // Replace with your quantity variable
                            style: TEXT_STYLE.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: BOLD,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              // Add your increment logic here
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    value: _isChecked_4,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked_4 = value!;
                      });
                    },
                    shape: OutlinedBorder.lerp(const CircleBorder(),
                        const RoundedRectangleBorder(), 0.5),
                    activeColor: BOLD,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 130,
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
                                padding: const EdgeInsets.all(15),
                                child: Image.asset(
                                  'assets/cement_images/image 45.png',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 63),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dalmia A1 OPC Cement',
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
                              'CEMENT OPC 53 GRADE',
                              style: TEXT_STYLE.copyWith(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: LIT_BOLD,
                              ),
                            ),
                          ],
                        ),
                        Row(
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
                            const SizedBox(width: 25),
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
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  SizedBox(
                    // width: 100,
                    height: 40,
                    child: Card(
                      color: const Color(0xFFDFDFDF),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color.fromARGB(71, 158, 158, 158),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.remove,
                            ),
                            onPressed: () {
                              // Add your decrement logic here
                            },
                          ),
                          Text(
                            '100', // Replace with your quantity variable
                            style: TEXT_STYLE.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: BOLD,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              // Add your increment logic here
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    value: _isChecked_5,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked_5 = value!;
                      });
                    },
                    shape: OutlinedBorder.lerp(const CircleBorder(),
                        const RoundedRectangleBorder(), 0.5),
                    activeColor: BOLD,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 130,
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
                                padding: const EdgeInsets.all(15),
                                child: Image.asset(
                                  'assets/cement_images/silver.png',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 63),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dalmia A1 OPC Cement',
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
                              'CEMENT OPC 53 GRADE',
                              style: TEXT_STYLE.copyWith(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: LIT_BOLD,
                              ),
                            ),
                          ],
                        ),
                        Row(
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
                            const SizedBox(width: 25),
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
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  SizedBox(
                    // width: 100,
                    height: 40,
                    child: Card(
                      color: const Color(0xFFDFDFDF),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color.fromARGB(71, 158, 158, 158),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.remove,
                            ),
                            onPressed: () {
                              // Add your decrement logic here
                            },
                          ),
                          Text(
                            '100', // Replace with your quantity variable
                            style: TEXT_STYLE.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: BOLD,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              // Add your increment logic here
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                children: [
                  Text(
                    'Total value -1,00,000',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                child: SizedBox(
                  height: 50,
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
                      "Check Out",
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.w600,
                        color: isPressed ? Colors.white : BOLD,
                      ),
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
