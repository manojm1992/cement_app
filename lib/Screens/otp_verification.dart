import 'package:e_com_app/Screens/create_new_pass.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Global/constants.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Verify OTP',
                style: TEXT_STYLE.copyWith(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Text(
              textAlign: TextAlign.center,
              'Enter your OTP which has been sent to your email and complete verify your account. ',
              selectionColor: LIT_BOLD,
              style: TEXT_STYLE.copyWith(
                fontSize: SIZE_SM,
                fontWeight: FontWeight.normal,
                color: LIT_BOLD,
              ),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: OTPInput(),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Text(
            'A code has been sent to your phone',
            textAlign: TextAlign.center,
            selectionColor: LIT_BOLD,
            style: TEXT_STYLE.copyWith(
              fontSize: SIZE_SM,
              fontWeight: FontWeight.normal,
              color: LIT_BOLD,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Text(
            'Resend in 00:57',
            textAlign: TextAlign.center,
            //  selectionColor: LIT_BOLD,
            style: TEXT_STYLE.copyWith(
              fontSize: SIZE_SM,
              fontWeight: FontWeight.bold,
              color: BOLD,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NewPasswordScreen()));
                },
                child: Text(
                  "Continue",
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
    ));
  }
}

class OTPInput extends StatefulWidget {
  const OTPInput({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OTPInputState createState() => _OTPInputState();
}

class _OTPInputState extends State<OTPInput> {
  final List<TextEditingController> _controllers =
      List.generate(5, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(5, (_) => FocusNode());

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(5, (index) {
          return SizedBox(
            width: 40,
            child: TextField(
              controller: _controllers[index],
              focusNode: _focusNodes[index],
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
              maxLength: 1,
              decoration: const InputDecoration(
                counterText: '', // Hide character counter
              ),
              onChanged: (value) {
                if (value.isNotEmpty && index < 4) {
                  FocusScope.of(context).nextFocus();
                } else if (value.isEmpty && index > 0) {
                  FocusScope.of(context).previousFocus();
                }
              },
            ),
          );
        }),
      ),
    );
  }
}
