import 'dart:ui';

import 'package:e_com_app/common_appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountsDetailsPassword extends StatefulWidget {
  const AccountsDetailsPassword({super.key});

  @override
  _AccountsDetailsPasswordState createState() =>
      _AccountsDetailsPasswordState();
}

class _AccountsDetailsPasswordState extends State<AccountsDetailsPassword> {
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(title: ''),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 246, 248, 250),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.normal),
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(27.0),
                        borderSide: BorderSide(
                          color: const Color.fromARGB(255, 233, 237, 243)
                              .withOpacity(0.5),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(27.0),
                        borderSide: BorderSide(
                          color: const Color.fromARGB(255, 238, 237, 237)
                              .withOpacity(0.5),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(27.0),
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
                SizedBox(height: 25.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Account Details & Password',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Account Details',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    SizedBox(height: 10),
                    RichText(
                      text: TextSpan(
                        text: 'User Name',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.black),
                        children: [
                          TextSpan(
                            text: ' *',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 22.5, horizontal: 10),
                          hintText: 'Enter Full Name',
                          hintStyle: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 117, 117, 117),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                                color: const Color.fromARGB(255, 182, 180, 180),
                                width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 182, 180, 180),
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'User Name is required';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 18),
                    RichText(
                      text: TextSpan(
                        text: 'Email Address',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.black),
                        children: [
                          TextSpan(
                            text: ' *',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 22.5, horizontal: 10),
                          hintText: 'Enter Email Address',
                          hintStyle: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 117, 117, 117),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                                color: const Color.fromARGB(255, 182, 180, 180),
                                width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 182, 180, 180),
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email Address is required';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 18),
                    RichText(
                      text: TextSpan(
                        text: 'Phone Number',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.black),
                        children: [
                          TextSpan(
                            text: ' *',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 22.5, horizontal: 10),
                          hintText: 'Enter Phone Number',
                          hintStyle: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 117, 117, 117),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: const Color.fromARGB(255, 182, 180, 180),
                                width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 182, 180, 180),
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Phone Number is required';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 18),
                    RichText(
                      text: TextSpan(
                        text: 'Date Of Birth',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.black),
                        children: [
                          TextSpan(
                            text: ' *',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 22.5, horizontal: 10),
                          hintText: 'Enter Date Of Birth',
                          hintStyle: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 117, 117, 117),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                                color: const Color.fromARGB(255, 182, 180, 180),
                                width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 182, 180, 180),
                            ),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.calendar_month,
                                color: const Color.fromARGB(255, 74, 75, 75)),
                            onPressed: () {
                              // Handle date picker action
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Date Of Birth is required';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 18),
                    Text(
                      'Password Details',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Password',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: ' *',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) => BottomDrawerContent());
                          },
                          child: Text(
                            'Change',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color.fromARGB(255, 27, 58, 87),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: TextFormField(
                        obscureText: !_isPasswordVisible,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 22.5, horizontal: 10),
                          hintText: '****************',
                          hintStyle: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 117, 117, 117),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                                color: const Color.fromARGB(255, 182, 180, 180),
                                width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 182, 180, 180),
                            ),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: const Color.fromARGB(255, 74, 75, 75),
                            ),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password is required';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(
                            const Color(0xFF1B3A57)),
                        shape: const WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          // All fields are valid
                        }
                      },
                      child: Text('Save',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomDrawerContent extends StatelessWidget {
  const BottomDrawerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
      child: Container(
        padding: EdgeInsets.all(16.0),
        height: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Change Password',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 22.5, horizontal: 10),
                  hintText: 'Old Password',
                  hintStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color.fromARGB(255, 117, 117, 117),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 182, 180, 180),
                        width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 182, 180, 180),
                        width: 1),
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.grey),
                )
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 22.5, horizontal: 10),
                  hintText: 'New Password',
                  hintStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color.fromARGB(255, 117, 117, 117),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 182, 180, 180),
                        width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 182, 180, 180),
                        width: 1),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 22.5, horizontal: 10.0),
                  hintText: 'Repeat New Password',
                  hintStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color.fromARGB(255, 117, 117, 117),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 182, 180, 180),
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 182, 180, 180),
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding:
                  const EdgeInsets.only(left: 4, top: 16, right: 4, bottom: 16),
              child: SizedBox(
                height: 39,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(const Color(0xFF1B3A57)),
                    shape: const WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Handle password change
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Save Password',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: const Color.fromARGB(255, 235, 232, 232),
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
}
