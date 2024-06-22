import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

import '../../Global/constants.dart';
import 'order_confirmed.dart';

class UPIpage extends StatefulWidget {
  const UPIpage({super.key});

  @override
  State<UPIpage> createState() => _UPIpageState();
}

class _UPIpageState extends State<UPIpage> {
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
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
          builder: (context) =>
              const OrderConfirmedPage()), // Replace `NextPage` with your next page widget
    );
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
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                children: [
                  Text(
                    'UPI ID Entered',
                    textAlign: TextAlign.center,
                    style: TEXT_STYLE.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
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
                    '987654321@hdfcbank',
                    textAlign: TextAlign.center,
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w500,
                      color: LIT_BOLD,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.010,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        formattedTime,
                        style: TEXT_STYLE.copyWith(
                          fontSize: 40,
                          fontWeight: FontWeight.normal,
                          color: BOLD,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Transaction Will Expire in',
                    textAlign: TextAlign.center,
                    style: TEXT_STYLE.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: BOLD,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SimpleAnimationProgressBar(
                    height: 5,
                    width: 260,
                    backgroundColor: Colors.transparent,
                    foregrondColor: BOLD,
                    ratio: 1,
                    direction: Axis.horizontal,
                    curve: Curves.fastLinearToSlowEaseIn,
                    duration: const Duration(seconds: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  SimpleAnimationProgressBar(
                    height: 5,
                    width: 90,
                    backgroundColor: Colors.transparent,
                    foregrondColor: SECONDARY_COLOR,
                    ratio: 1,
                    direction: Axis.horizontal,
                    curve: Curves.fastLinearToSlowEaseIn,
                    duration: const Duration(seconds: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.010,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Transaction Will Expire in',
                      textAlign: TextAlign.end,
                      style: TEXT_STYLE.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFF50555C),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                children: [
                  const CircleAvatar(
                    maxRadius: 10,
                    backgroundColor: BOLD,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'STEP 1',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w600,
                      color: BOLD,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    Text(
                      'Go to UPI/Bank app Linked with your UPI ID\n or Click on Notification from your UPI\n App',
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.w400,
                        color: BOLD,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                children: [
                  const CircleAvatar(
                    maxRadius: 10,
                    backgroundColor: BOLD,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'STEP 2',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.w600,
                      color: BOLD,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    Text(
                      'Check Your Pending Requests and Enter\n UPI PIN',
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.w400,
                        color: BOLD,
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
}
