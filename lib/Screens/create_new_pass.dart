import 'package:e_com_app/Screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../Global/constants.dart';
import 'Bottom_Nav_Bar/bottom_nav_bar.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  bool isChecked = false;
  bool isChecked_1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Create new password',
                  style: TEXT_STYLE.copyWith(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(
                textAlign: TextAlign.center,
                "Welcome back! Please enter your details.",
                selectionColor: LIT_BOLD,
                style: TEXT_STYLE.copyWith(
                  fontSize: SIZE_SM,
                  fontWeight: FontWeight.normal,
                  color: LIT_BOLD,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                autocorrect: true,
                autofocus: false,
                style: const TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  hintText: 'Create new password',
                  hintStyle: TEXT_STYLE.copyWith(
                    fontSize: SIZE_SM,
                    fontWeight: FontWeight.normal,
                    color: LIT_BOLD,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                autocorrect: true,
                autofocus: false,
                style: const TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  hintText: 'Confirm password',
                  hintStyle: TEXT_STYLE.copyWith(
                    fontSize: SIZE_SM,
                    fontWeight: FontWeight.normal,
                    color: LIT_BOLD,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Password must have:',
                    style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.bold,
                        color: BOLD),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    shape: const CircleBorder(),
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text(
                    'I agree to Terms and conditions',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.normal,
                      color: LIT_BOLD,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked_1,
                    shape: const CircleBorder(),
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked_1 = value!;
                      });
                    },
                  ),
                  Text(
                    'I agree to Terms and conditions',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.normal,
                      color: LIT_BOLD,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
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
                            builder: (context) =>
                                const CustomBottomNavigationBar()));
                  },
                  child: Text(
                    "Register",
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
    );
  }

  Color getColor(Set<MaterialState> states) {
    if (states.contains(MaterialState.selected)) {
      return Colors.green;
    }
    return Colors.transparent;
  }
}
