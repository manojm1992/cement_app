import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Global/constants.dart';
import 'order_page.dart';

class OrderTrackingPage extends StatefulWidget {
  const OrderTrackingPage({super.key});

  @override
  State<OrderTrackingPage> createState() => _OrderTrackingPageState();
}

class _OrderTrackingPageState extends State<OrderTrackingPage> {
  List<StepperData> stepperData = [
    StepperData(
      iconWidget: Container(
        width: 20.0, // You can adjust the width as needed
        height: 20.0,
        decoration: const BoxDecoration(
          color: BOLD,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Container(
            width: 8.0, // You can adjust the width as needed
            height: 8.0,
            decoration: BoxDecoration(
              color: Color(0xFFD3D3D3),
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xFF001F3F), // Black color for the border
                width: 1.0, // Adjust the border width as needed
              ),
            ),
          ),
        ),
      ),
      title: StepperText("Ordered",
          textStyle: TEXT_STYLE.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: BOLD,
          )),
    ),
    StepperData(
      iconWidget: Container(
        width: 20.0, // You can adjust the width as needed
        height: 20.0,
        decoration: const BoxDecoration(
          color: BOLD,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Container(
            width: 8.0, // You can adjust the width as needed
            height: 8.0,
            decoration: BoxDecoration(
              color: Color(0xFFD3D3D3),
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xFF001F3F), // Black color for the border
                width: 1.0, // Adjust the border width as needed
              ),
            ),
          ),
        ),
      ),
      title: StepperText("Loading Started",
          textStyle: TEXT_STYLE.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: BOLD,
          )),
    ),
    StepperData(
      iconWidget: Container(
        width: 20.0, // You can adjust the width as needed
        height: 20.0,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          shape: BoxShape.circle,
          border: Border.all(
            color: Color(0xFF001F3F), // Black color for the border
            width: 1.0, // Adjust the border width as needed
          ),
        ),
      ),
      title: StepperText("Items Checked",
          textStyle: TEXT_STYLE.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: BOLD,
          )),
    ),
    StepperData(
      iconWidget: Container(
        width: 20.0, // You can adjust the width as needed
        height: 20.0,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          shape: BoxShape.circle,
          border: Border.all(
            color: Color(0xFF001F3F), // Black color for the border
            width: 1.0, // Adjust the border width as needed
          ),
        ),
      ),
      title: StepperText("Out for Delivery",
          textStyle: TEXT_STYLE.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: BOLD,
          )),
    ),
  ];
  SampleItem? selectedMenu;

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
        padding: const EdgeInsets.only(left: 17, right: 17,bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Details',
                    style: TEXT_STYLE.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
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
                    width: 108,
                    height: 135,
                    child: Image.asset('assets/cement_images/image 30.png'),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ramco OPC Cement',
                        // textAlign: TextAlign.center,
                        style: TEXT_STYLE.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'CEMENT, OPC 53 GRADE',
                            textAlign: TextAlign.start,
                            style: TEXT_STYLE.copyWith(
                              fontSize: 12,
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
                          Text(
                            'Qty',
                            style: TEXT_STYLE.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: LIT_BOLD,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          MenuAnchor(
                            builder: (BuildContext context,
                                MenuController controller, Widget? child) {
                              return IconButton(
                                onPressed: () {
                                  if (controller.isOpen) {
                                    controller.close();
                                  } else {
                                    controller.open();
                                  }
                                },
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                ),
                                tooltip: 'Show menu',
                              );
                            },
                            menuChildren: List<MenuItemButton>.generate(
                              3,
                              (int index) => MenuItemButton(
                                onPressed: () => setState(() =>
                                    selectedMenu = SampleItem.values[index]),
                                child: Text('Item ${index + 1}'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            '₹1,00,000',
                            // textAlign: TextAlign.center,
                            style: TEXT_STYLE.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              AnotherStepper(
                stepperList: stepperData,
                stepperDirection: Axis.vertical,
                iconWidth: 20,
                iconHeight: 20,
                activeBarColor: BOLD,
                inActiveBarColor: const Color(0xFFFFFFFF),
                verticalGap: 21,
                activeIndex: 3,
                barThickness: 1,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Order Arrive in 5.30 Hrs',
                    // textAlign: TextAlign.center,
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
                            builder: (context) => const OrderPage()));
                  },
                  child: Text(
                    "Detail view",
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w600,
                      color: BOLD,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.040,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Vendor Details',
                    // textAlign: TextAlign.center,
                    style: TEXT_STYLE.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: BOLD,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Manoj',
                    // textAlign: TextAlign.center,
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.bold,
                      color: BOLD,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.010,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'No:13, 5th Street  SAP Nagar',
                    // textAlign: TextAlign.center,
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w500,
                      color: BOLD,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.010,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Karnataka',
                    // textAlign: TextAlign.center,
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w500,
                      color: BOLD,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.010,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Bangalore - 500623',
                    // textAlign: TextAlign.center,
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w500,
                      color: BOLD,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.010,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Phone : 8976543210',
                    // textAlign: TextAlign.center,
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w500,
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
                  SizedBox(
                    height: 30,
                    width: 100,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white
                                // isPressed ? BOLD : Colors.white,
                                ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            side: BorderSide(color: BOLD, width: 1.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        // setState(() {
                        //   isPressed = !isPressed; // Toggle the pressed state
                        // });
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) =>
                        //             const OtpVerificationScreen()));
                      },
                      child: Text(
                        "CALL",
                        style: TEXT_STYLE.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: BOLD,
                          // color: isPressed ? const Color(0xFFD3D3D3) : BOLD,
                        ),
                      ),
                    ),
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

enum SampleItem { itemOne, itemTwo, itemThree }
