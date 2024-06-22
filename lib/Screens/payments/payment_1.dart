import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Global/constants.dart';
import 'payment_2.dart';

class PaymentScreen1 extends StatefulWidget {
  const PaymentScreen1({super.key});

  @override
  State<PaymentScreen1> createState() => _PaymentScreen1State();
}

class _PaymentScreen1State extends State<PaymentScreen1> {
  List<StepperData> stepperData = [
    StepperData(
      iconWidget: Container(
        width: 20.0, // You can adjust the width as needed
        height: 20.0,
        decoration: const BoxDecoration(
          color: BOLD,
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Text(
            "1",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12, // Adjust the font size as needed
            ),
          ),
        ),
      ),
      title: StepperText("Step 1",
          textStyle: TEXT_STYLE.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: BOLD,
          )),
    ),
    StepperData(
      iconWidget: Container(
        // color: Colors.white,
        width: 20.0, // You can adjust the width as needed
        height: 20.0,
        decoration: const BoxDecoration(
          color: BOLD,
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Text(
            "2",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12, // Adjust the font size as needed
            ),
          ),
        ),
      ),
      title: StepperText("Step 2",
          textStyle: TEXT_STYLE.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: BOLD,
          )),
    ),
  ];
  bool isChecked = false;
  bool isChecked_1 = false;
  bool isChecked_2 = false;
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
      body: Padding(
        padding: const EdgeInsets.only(left: 17, right: 17),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              AnotherStepper(
                stepperList: stepperData,
                stepperDirection: Axis.horizontal,
                iconWidth: 20,
                iconHeight: 20,
                activeBarColor: BOLD,
                inActiveBarColor: const Color(0xFFFFFFFF),
                verticalGap: 21,
                activeIndex: 3,
                barThickness: 1,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.040,
              ),
              Row(
                children: [
                  Text(
                    'Cash on Delivery',
                    textAlign: TextAlign.center,
                    style: TEXT_STYLE.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
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
                    'Minimum delivery amount',
                    textAlign: TextAlign.center,
                    style: TEXT_STYLE.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFFE54444),
                    ),
                  ),
                  Text(
                    '₹1,000',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.bold,
                      color: BOLD,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.050,
              ),
              Row(
                children: [
                  Text(
                    'UPI ID',
                    textAlign: TextAlign.center,
                    style: TEXT_STYLE.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              Container(
                height: 80,
                width: 380,
                decoration: BoxDecoration(
                  color: const Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Text(
                            'Enter Your UPI ID',
                            style: TEXT_STYLE.copyWith(
                              fontSize: SIZE_SM,
                              fontWeight: FontWeight.w600,
                              color: BOLD,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 12),
                      child: Row(
                        children: [
                          Text(
                            '987654321@hdfcbank',
                            style: TEXT_STYLE.copyWith(
                              fontSize: SIZE_SM,
                              fontWeight: FontWeight.w500,
                              color: LIT_BOLD,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            maxRadius: 10,
                            child: Image.asset('assets/Group 29905.png'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Container(
                height:
                    isChecked ? 130 : 70, // Adjust height based on isChecked

                width: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: [
                          SizedBox(
                              width: 35,
                              height: 35,
                              child: Image.asset(
                                  'assets/payment_images/image 4.png')),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Google Pay',
                            style: TEXT_STYLE.copyWith(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          Checkbox(
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: isChecked,
                            shape: const CircleBorder(),
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    if (isChecked)
                      Padding(
                        padding: const EdgeInsets.only(left: 80, right: 10),
                        child: SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(BOLD),
                              shape: const MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PaymentScreen2()));
                            },
                            child: Text(
                              "Pay using Google Pay",
                              style: TEXT_STYLE.copyWith(
                                fontSize: SIZE_SM,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFD3D3D3),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Container(
                height:
                    isChecked_1 ? 130 : 70, // Adjust height based on isChecked

                width: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: [
                          SizedBox(
                              width: 35,
                              height: 35,
                              child: Image.asset(
                                  'assets/payment_images/image 5.png')),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Paytm',
                            style: TEXT_STYLE.copyWith(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          Checkbox(
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: isChecked_1,
                            shape: const CircleBorder(),
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked_1 = value!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    if (isChecked_1)
                      Padding(
                        padding: const EdgeInsets.only(left: 80, right: 10),
                        child: SizedBox(
                          height: 50, // Adjust height based on isChecked
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(BOLD),
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
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const CustomBottomNavigationBar()));
                            },
                            child: Text(
                              "Pay using Paytm",
                              style: TEXT_STYLE.copyWith(
                                fontSize: SIZE_SM,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFD3D3D3),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Container(
                height:
                    isChecked_2 ? 130 : 70, // Adjust height based on isChecked

                width: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: [
                          SizedBox(
                              width: 35,
                              height: 35,
                              child: Image.asset(
                                  'assets/payment_images/image 7.png')),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'PhonePe UPI',
                            style: TEXT_STYLE.copyWith(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          Checkbox(
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: isChecked_2,
                            shape: const CircleBorder(),
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked_2 = value!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    if (isChecked_2)
                      Padding(
                        padding: const EdgeInsets.only(left: 80, right: 10),
                        child: SizedBox(
                          height: 50, // Adjust height based on isChecked
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(BOLD),
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
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const CustomBottomNavigationBar()));
                            },
                            child: Text(
                              "Pay using PhonePe UPI",
                              style: TEXT_STYLE.copyWith(
                                fontSize: SIZE_SM,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFD3D3D3),
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
        ),
      ),
    );
  }

  Color getColor(Set<MaterialState> states) {
    if (states.contains(MaterialState.selected)) {
      return Colors.black;
    }
    return Colors.transparent;
  }
}
