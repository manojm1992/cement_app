import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Global/constants.dart';
import 'dart:ui';

class PriceSlider extends StatefulWidget {
  const PriceSlider({super.key});

  @override
  _PriceSliderState createState() => _PriceSliderState();
}

class _PriceSliderState extends State<PriceSlider> {
  double _currentSliderValue = 0;
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Price',
              style: TEXT_STYLE.copyWith(
                fontSize: SIZE_SM,
                fontWeight: FontWeight.w600,
                color: _isExpanded ? BOLD : const Color(0XFF686868),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            IconButton(
              icon: Icon(
                _isExpanded
                    ? Icons.keyboard_arrow_down
                    : Icons.arrow_forward_ios_rounded,
                size: 18,
                color: const Color(0XFF686868),
              ),
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
            ),
          ],
        ),
        const SizedBox(height: 10),
        if (_isExpanded) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('₹0'),
              Text('₹${_currentSliderValue.round()}'),
            ],
          ),
          Slider(
            value: _currentSliderValue,
            min: 0,
            max: 450,
            divisions: 450,
            activeColor: const Color(0xFF1B3A57),
            inactiveColor: const Color(0xFFB6B4B4),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
        ],
      ],
    );
  }
}

class BottomDrawerContent extends StatefulWidget {
  const BottomDrawerContent({super.key});

  @override
  State<BottomDrawerContent> createState() => _BottomDrawerContentState();
}

class _BottomDrawerContentState extends State<BottomDrawerContent> {
  bool isChecked = false;
  bool isChecked_1 = false;
  bool isChecked_2 = false;
  bool isChecked_3 = false;
  bool isChecked_4 = false;
  bool isChecked_5 = false;
  bool isChecked_6 = false;
  bool isChecked_7 = false;
  bool isChecked_8 = false;
  bool isChecked_9 = false;
  bool isChecked_10 = false;
  bool isChecked_11 = false;
  bool isChecked_12 = false;

  bool _isExpanded_1 = false;
  bool _isExpanded_2 = false;
  bool _isExpanded_3 = false;
  bool _isExpanded_4 = false;

  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.cancel_outlined,
                    color: BOLD,
                    size: 24,
                  ),
                ),
              ),
              Text(
                'Filters',
                style: TEXT_STYLE.copyWith(
                  fontSize: SIZE_SM,
                  fontWeight: FontWeight.bold,
                  color: BOLD,
                ),
              ),
              Text(
                'Clear all',
                style: GoogleFonts.lato(
                  textStyle: TEXT_STYLE.copyWith(
                    fontSize: SIZE_SM,
                    fontWeight: FontWeight.bold,
                    color: BOLD,
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.030,
          ),
          Container(
            width: 400,
            height: 310,
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromRGBO(230, 228, 228, 1), width: 2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Card(
                      shadowColor: const Color(0XFFE9E9E9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(
                          color: Color(0XFFE9E9E9),
                        ),
                      ),
                      surfaceTintColor: Colors.transparent,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            PriceSlider(),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      // height: MediaQuery.of(context).size.height,
                      child: Card(
                        shadowColor: const Color(0XFFE9E9E9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: const BorderSide(
                            color: Color(0XFFE9E9E9),
                          ),
                        ),
                        surfaceTintColor: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Type of cement',
                                    style: TEXT_STYLE.copyWith(
                                      fontSize: SIZE_SM,
                                      fontWeight: FontWeight.w600,
                                      color: _isExpanded_1
                                          ? BOLD
                                          : const Color(0XFF686868),
                                    ),
                                  ),
                                  const Spacer(
                                    flex: 2,
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      _isExpanded_1
                                          ? Icons.keyboard_arrow_down
                                          : Icons.arrow_forward_ios_rounded,
                                      size: 18,
                                      color: const Color(0XFF686868),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isExpanded_1 = !_isExpanded_1;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              if (_isExpanded_1) ...[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Checkbox(
                                          value: isChecked,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isChecked = value!;
                                            });
                                          },
                                          shape: OutlinedBorder.lerp(
                                              const CircleBorder(),
                                              const RoundedRectangleBorder(),
                                              0.5),
                                          activeColor: BOLD,
                                        ),
                                        Text(
                                          "PPC Cement",
                                          style: TEXT_STYLE.copyWith(
                                            fontSize: SIZE_SM,
                                            fontWeight: FontWeight.bold,
                                            color: BOLD,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: isChecked_1,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked_1 = value!;
                                        });
                                      },
                                      shape: OutlinedBorder.lerp(
                                          const CircleBorder(),
                                          const RoundedRectangleBorder(),
                                          0.5),
                                      activeColor: BOLD,
                                    ),
                                    Text(
                                      "PSC Cement",
                                      style: TEXT_STYLE.copyWith(
                                        fontSize: SIZE_SM,
                                        fontWeight: FontWeight.bold,
                                        color: BOLD,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: isChecked_2,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked_2 = value!;
                                        });
                                      },
                                      shape: OutlinedBorder.lerp(
                                          const CircleBorder(),
                                          const RoundedRectangleBorder(),
                                          0.5),
                                      activeColor: BOLD,
                                    ),
                                    Text(
                                      "Super Grade Cement",
                                      style: TEXT_STYLE.copyWith(
                                        fontSize: SIZE_SM,
                                        fontWeight: FontWeight.bold,
                                        color: BOLD,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      // height: MediaQuery.of(context).size.height,
                      child: Card(
                        shadowColor: const Color(0XFFE9E9E9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: const BorderSide(
                            color: Color(0XFFE9E9E9),
                          ),
                        ),
                        surfaceTintColor: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Grade',
                                    style: TEXT_STYLE.copyWith(
                                      fontSize: SIZE_SM,
                                      fontWeight: FontWeight.w600,
                                      color: _isExpanded_2
                                          ? BOLD
                                          : const Color(0XFF686868),
                                    ),
                                  ),
                                  const Spacer(
                                    flex: 2,
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      _isExpanded_2
                                          ? Icons.keyboard_arrow_down
                                          : Icons.arrow_forward_ios_rounded,
                                      size: 18,
                                      color: const Color(0XFF686868),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isExpanded_2 = !_isExpanded_2;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              if (_isExpanded_2) ...[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Checkbox(
                                          value: isChecked_3,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isChecked_3 = value!;
                                            });
                                          },
                                          shape: OutlinedBorder.lerp(
                                              const CircleBorder(),
                                              const RoundedRectangleBorder(),
                                              0.5),
                                          activeColor: BOLD,
                                        ),
                                        Text(
                                          "33 Grade Cement",
                                          style: TEXT_STYLE.copyWith(
                                            fontSize: SIZE_SM,
                                            fontWeight: FontWeight.bold,
                                            color: BOLD,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: isChecked_4,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked_4 = value!;
                                        });
                                      },
                                      shape: OutlinedBorder.lerp(
                                          const CircleBorder(),
                                          const RoundedRectangleBorder(),
                                          0.5),
                                      activeColor: BOLD,
                                    ),
                                    Text(
                                      "43 Grade Cement",
                                      style: TEXT_STYLE.copyWith(
                                        fontSize: SIZE_SM,
                                        fontWeight: FontWeight.bold,
                                        color: BOLD,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: isChecked_5,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked_5 = value!;
                                        });
                                      },
                                      shape: OutlinedBorder.lerp(
                                          const CircleBorder(),
                                          const RoundedRectangleBorder(),
                                          0.5),
                                      activeColor: BOLD,
                                    ),
                                    Text(
                                      "53 Grade Cement",
                                      style: TEXT_STYLE.copyWith(
                                        fontSize: SIZE_SM,
                                        fontWeight: FontWeight.bold,
                                        color: BOLD,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      // height: MediaQuery.of(context).size.height,
                      child: Card(
                        shadowColor: const Color(0XFFE9E9E9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: const BorderSide(
                            color: Color(0XFFE9E9E9),
                          ),
                        ),
                        surfaceTintColor: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Packaging',
                                    style: TEXT_STYLE.copyWith(
                                      fontSize: SIZE_SM,
                                      fontWeight: FontWeight.w600,
                                      color: _isExpanded_3
                                          ? BOLD
                                          : const Color(0XFF686868),
                                    ),
                                  ),
                                  const Spacer(
                                    flex: 2,
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      _isExpanded_3
                                          ? Icons.keyboard_arrow_down
                                          : Icons.arrow_forward_ios_rounded,
                                      size: 18,
                                      color: const Color(0XFF686868),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isExpanded_3 = !_isExpanded_3;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              if (_isExpanded_3) ...[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Checkbox(
                                          value: isChecked_6,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isChecked_6 = value!;
                                            });
                                          },
                                          shape: OutlinedBorder.lerp(
                                              const CircleBorder(),
                                              const RoundedRectangleBorder(),
                                              0.5),
                                          activeColor: BOLD,
                                        ),
                                        Text(
                                          "ACC",
                                          style: TEXT_STYLE.copyWith(
                                            fontSize: SIZE_SM,
                                            fontWeight: FontWeight.bold,
                                            color: BOLD,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: isChecked_7,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked_7 = value!;
                                        });
                                      },
                                      shape: OutlinedBorder.lerp(
                                          const CircleBorder(),
                                          const RoundedRectangleBorder(),
                                          0.5),
                                      activeColor: BOLD,
                                    ),
                                    Text(
                                      "paper bags",
                                      style: TEXT_STYLE.copyWith(
                                        fontSize: SIZE_SM,
                                        fontWeight: FontWeight.bold,
                                        color: BOLD,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      // height: MediaQuery.of(context).size.height,
                      child: Card(
                        shadowColor: const Color(0XFFE9E9E9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: const BorderSide(
                            color: Color(0XFFE9E9E9),
                          ),
                        ),
                        surfaceTintColor: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Brand',
                                    style: TEXT_STYLE.copyWith(
                                      fontSize: SIZE_SM,
                                      fontWeight: FontWeight.w600,
                                      color: _isExpanded_4
                                          ? BOLD
                                          : const Color(0XFF686868),
                                    ),
                                  ),
                                  const Spacer(
                                    flex: 2,
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      _isExpanded_4
                                          ? Icons.keyboard_arrow_down
                                          : Icons.arrow_forward_ios_rounded,
                                      size: 18,
                                      color: const Color(0XFF686868),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isExpanded_4 = !_isExpanded_4;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              if (_isExpanded_4) ...[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Checkbox(
                                          value: isChecked_8,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isChecked_8 = value!;
                                            });
                                          },
                                          shape: OutlinedBorder.lerp(
                                              const CircleBorder(),
                                              const RoundedRectangleBorder(),
                                              0.5),
                                          activeColor: BOLD,
                                        ),
                                        Text(
                                          "ACC",
                                          style: TEXT_STYLE.copyWith(
                                            fontSize: SIZE_SM,
                                            fontWeight: FontWeight.bold,
                                            color: BOLD,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: isChecked_9,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked_9 = value!;
                                        });
                                      },
                                      shape: OutlinedBorder.lerp(
                                          const CircleBorder(),
                                          const RoundedRectangleBorder(),
                                          0.5),
                                      activeColor: BOLD,
                                    ),
                                    Text(
                                      "Ultra Tech",
                                      style: TEXT_STYLE.copyWith(
                                        fontSize: SIZE_SM,
                                        fontWeight: FontWeight.bold,
                                        color: BOLD,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: isChecked_10,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked_10 = value!;
                                        });
                                      },
                                      shape: OutlinedBorder.lerp(
                                          const CircleBorder(),
                                          const RoundedRectangleBorder(),
                                          0.5),
                                      activeColor: BOLD,
                                    ),
                                    Text(
                                      "Sriram Cement",
                                      style: TEXT_STYLE.copyWith(
                                        fontSize: SIZE_SM,
                                        fontWeight: FontWeight.bold,
                                        color: BOLD,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: isChecked_11,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked_11 = value!;
                                        });
                                      },
                                      shape: OutlinedBorder.lerp(
                                          const CircleBorder(),
                                          const RoundedRectangleBorder(),
                                          0.5),
                                      activeColor: BOLD,
                                    ),
                                    Text(
                                      "Ramco",
                                      style: TEXT_STYLE.copyWith(
                                        fontSize: SIZE_SM,
                                        fontWeight: FontWeight.bold,
                                        color: BOLD,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: isChecked_12,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked_12 = value!;
                                        });
                                      },
                                      shape: OutlinedBorder.lerp(
                                          const CircleBorder(),
                                          const RoundedRectangleBorder(),
                                          0.5),
                                      activeColor: BOLD,
                                    ),
                                    Text(
                                      "JSW",
                                      style: TEXT_STYLE.copyWith(
                                        fontSize: SIZE_SM,
                                        fontWeight: FontWeight.bold,
                                        color: BOLD,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
           SizedBox(
            height: MediaQuery.of(context).size.height*0.02,
          ),
          SizedBox(
            height: 40,
             width: MediaQuery.of(context).size.width *0.95,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(
                  isPressed ? BOLD : Colors.white,
                ),
                shape: const WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
                side: WidgetStateProperty.all<BorderSide>(
                  const BorderSide(color: BOLD, width: 1.0),
                ),
                padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                ),
              ),
              onPressed: () {
                setState(() {
                  isPressed = !isPressed;
                });
              },
              child: Text(
                "Apply Filter",
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
    );
  }
}
