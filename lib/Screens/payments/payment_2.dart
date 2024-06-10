import 'dart:async';
import 'dart:io';

import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../../Global/constants.dart';
import '../Shipping/order_confirmed.dart';

class PaymentScreen2 extends StatefulWidget {
  const PaymentScreen2({super.key});

  @override
  State<PaymentScreen2> createState() => _PaymentScreen2State();
}

class _PaymentScreen2State extends State<PaymentScreen2> {
  final ImagePicker _picker = ImagePicker();
  XFile? _image;

  Future<void> _pickImage() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        setState(() {
          _image = image;
        });
        print('Image path: ${image.path}'); // Debug statement
      }
    } catch (e) {
      print('Error picking image: $e'); // Debug statement
    }
  }

  double ratio = 0;
  late Timer _timer;
  int _remainingTime = 300; // 5 minutes in seconds

  @override
  void initState() {
    super.initState();
    startTimer();
    ratioVal();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        setState(() {
          _remainingTime--;

          // Navigate to the next page when the timer reaches 4:56
          if (_remainingTime == 296) {
            navigateToNextPage();
          }
        });
      } else {
        timer.cancel();
      }
    });
  }

  void navigateToNextPage() {
    // Navigator.of(context).pushReplacement(
    //   MaterialPageRoute(
    //       builder: (context) =>
    //           const OrderConfirmedPage()), // Replace `NextPage` with your next page widget
    // );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void ratioVal() {
    if (ratio == 0) {
      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          ratio = 0.2;
        });
        if (ratio == 0.2) {
          Future.delayed(const Duration(seconds: 1), () {
            setState(() {
              ratio = 0.4;
            });
            if (ratio == 0.4) {
              Future.delayed(const Duration(seconds: 1), () {
                setState(() {
                  ratio = 0.7;
                });
                if (ratio == 0.7) {
                  Future.delayed(const Duration(seconds: 1), () {
                    setState(() {
                      ratio = 1;
                    });
                    if (ratio == 1) {
                      Future.delayed(const Duration(seconds: 1), () {
                        setState(() {
                          ratio = 0;
                        });
                      });
                    }
                  });
                }
              });
            }
          });
        }
      });
    }
  }

  String get formattedTime {
    final minutes = _remainingTime ~/ 60;
    final seconds = _remainingTime % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 17, right: 17),
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
                height: MediaQuery.of(context).size.height * 0.060,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Upload a photo of Transaction Recipient ',
                    style: TEXT_STYLE.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Regulations require you to Transaction Recipient. ",
                    style: TEXT_STYLE.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: LIT_BOLD,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't worry, your data will stay safe and private",
                    style: TEXT_STYLE.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: LIT_BOLD,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Container(
                height: 120,
                width: 380,
                decoration: BoxDecoration(
                  color: const Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: _pickImage,
                        child: const Icon(
                          Icons.photo,
                          size: 25,
                          color: LIT_BOLD,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "Select file",
                        style: TEXT_STYLE.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: LIT_BOLD,
                        ),
                      ),
                      if (_image != null)
                        Image.file(File(_image!.path),
                            height:
                                100), // Display the selected image with a defined height
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.040,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                        child: const Divider(
                          color: Colors.grey,
                          height: 36,
                        )),
                  ),
                  const Text("Or"),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                      child: const Divider(
                        color: Colors.grey,
                        height: 36,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              SizedBox(
                height: 55,
                width: 375,
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
                  onPressed:
                      _pickImage, // Updated to use the same pickImage method
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.camera_alt,
                          size: 26, color: LIT_BOLD), // Camera icon
                      const SizedBox(width: 20), // Space between icon and text
                      Text(
                        "Open Camera & Take Photo",
                        style: TEXT_STYLE.copyWith(
                          fontSize: SIZE_SM,
                          fontWeight: FontWeight.w600,
                          color: BOLD,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
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
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) =>
                      //             const CustomBottomNavigationBar()));
                    },
                    child: Text(
                      "Continue",
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFD3D3D3),
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
