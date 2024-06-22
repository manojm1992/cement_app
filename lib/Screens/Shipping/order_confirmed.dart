import 'package:e_com_app/Screens/Delivery_Address/delivery_address.dart';
import 'package:e_com_app/Screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Global/constants.dart';
import '../../Product_model/Order_Tracking_Page/order_tracking.dart';

class OrderConfirmedPage extends StatefulWidget {
  const OrderConfirmedPage({super.key});

  @override
  State<OrderConfirmedPage> createState() => _OrderConfirmedPageState();
}

class _OrderConfirmedPageState extends State<OrderConfirmedPage> {
  OverlayEntry? _overlayEntry;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showPopupMessage();
    });
  }

  void _showPopupMessage() {
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context)?.insert(_overlayEntry!);

    Future.delayed(const Duration(seconds: 3), () {
      _overlayEntry?.remove();
    });
  }

  OverlayEntry _createOverlayEntry() {
    return OverlayEntry(
      builder: (context) => Positioned(
        top: MediaQuery.of(context).padding.top +
            10, // Adjust the position as needed
        left: 10,
        right: 10,
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: BOLD,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Order Successful',
                  style: TEXT_STYLE.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Text(
                  'OTP 4567, do not share OTP with anyone...',
                  style: TEXT_STYLE.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFC8C5C5)),
                ),
                const SizedBox(height: 10),
                const LinearProgressIndicator(
                  backgroundColor: Colors.white,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 17, right: 17, top: 200),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/animations/Logo animation1.gif',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.010,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Order confirmed',
                  textAlign: TextAlign.center,
                  style: TEXT_STYLE.copyWith(
                    fontSize: 20,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You Can Now Track Your Order In\n My Order',
                  textAlign: TextAlign.center,
                  style: TEXT_STYLE.copyWith(
                    fontSize: SIZE_SM,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
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
                  backgroundColor: MaterialStateProperty.all<Color>(BOLD),
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
                          builder: (context) => const DeliveryAddressPage()));
                },
                child: Text(
                  "Home",
                  style: TEXT_STYLE.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: SECONDARY_COLOR,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
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
                          builder: (context) => const OrderTrackingPage()));
                },
                child: Text(
                  "Track Your Order",
                  style: TEXT_STYLE.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: BOLD,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
