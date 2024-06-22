import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Global/constants.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
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
      body: Padding(
        padding: const EdgeInsets.only(left: 17, right: 17),
        child: SingleChildScrollView(
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
                        // border: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(20.0),
                        //   borderSide: BorderSide(
                        //     color: Colors.grey.withOpacity(0.5),
                        //   ),
                        // ),
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
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                children: [
                  Text(
                    'Edit Profile',
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
              Stack(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/Menu (2).png',
                        fit: BoxFit.cover,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -10,
                    right: -10,
                    child: IconButton(
                      icon: const Icon(
                        Icons.edit,
                        color: LIT_BOLD,
                      ),
                      onPressed: () {
                        // Add your edit action here
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Upload/Change Profile Picture',
                    textAlign: TextAlign.center,
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.bold,
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
                  Text.rich(
                    TextSpan(
                      text: 'Full Name',
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF000000),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '*',
                          style: TEXT_STYLE.copyWith(
                            fontSize: SIZE_SM,
                            fontWeight: FontWeight.normal,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.010,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Full Name',
                  labelStyle: TEXT_STYLE.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: LIT_BOLD,
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black, // Outline color
                    ),
                    borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.blue, // Outline color when focused
                    ),
                    borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: CONTAINER_COLOR, // Outline color when not focused
                    ),
                    borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Phone Number',
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF000000),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '*',
                          style: TEXT_STYLE.copyWith(
                            fontSize: SIZE_SM,
                            fontWeight: FontWeight.normal,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 78,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Email Address',
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF000000),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '*',
                          style: TEXT_STYLE.copyWith(
                            fontSize: SIZE_SM,
                            fontWeight: FontWeight.normal,
                            color: Colors.red,
                          ),
                        ),
                      ],
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
                  SizedBox(
                    height: 50,
                    width: 170,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter Phone Number',
                        labelStyle: TEXT_STYLE.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: LIT_BOLD,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black, // Outline color
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.blue, // Outline color when focused
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color:
                                CONTAINER_COLOR, // Outline color when not focused
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  SizedBox(
                    height: 50,
                    width: 170,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        labelStyle: TEXT_STYLE.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: LIT_BOLD,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black, // Outline color
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.blue, // Outline color when focused
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color:
                                CONTAINER_COLOR, // Outline color when not focused
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                      ),
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
                  Text.rich(
                    TextSpan(
                      text: 'Gender',
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF000000),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '*',
                          style: TEXT_STYLE.copyWith(
                            fontSize: SIZE_SM,
                            fontWeight: FontWeight.normal,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 130,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Date of Birth',
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF000000),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '*',
                          style: TEXT_STYLE.copyWith(
                            fontSize: SIZE_SM,
                            fontWeight: FontWeight.normal,
                            color: Colors.red,
                          ),
                        ),
                      ],
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
                  SizedBox(
                    height: 50,
                    width: 170,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Select Gender',
                        labelStyle: TEXT_STYLE.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: LIT_BOLD,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black, // Outline color
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.blue, // Outline color when focused
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color:
                                CONTAINER_COLOR, // Outline color when not focused
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  SizedBox(
                    height: 50,
                    width: 170,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter Date of Birth',
                        labelStyle: TEXT_STYLE.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: LIT_BOLD,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black, // Outline color
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.blue, // Outline color when focused
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color:
                                CONTAINER_COLOR, // Outline color when not focused
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                      ),
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
                  Text.rich(
                    TextSpan(
                      text: 'Street Address',
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF000000),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '*',
                          style: TEXT_STYLE.copyWith(
                            fontSize: SIZE_SM,
                            fontWeight: FontWeight.normal,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.010,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Street Address',
                  labelStyle: TEXT_STYLE.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: LIT_BOLD,
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black, // Outline color
                    ),
                    borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.blue, // Outline color when focused
                    ),
                    borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: CONTAINER_COLOR, // Outline color when not focused
                    ),
                    borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'City',
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF000000),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '*',
                          style: TEXT_STYLE.copyWith(
                            fontSize: SIZE_SM,
                            fontWeight: FontWeight.normal,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 162,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'State/Province',
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF000000),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '*',
                          style: TEXT_STYLE.copyWith(
                            fontSize: SIZE_SM,
                            fontWeight: FontWeight.normal,
                            color: Colors.red,
                          ),
                        ),
                      ],
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
                  SizedBox(
                    height: 50,
                    width: 170,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter City',
                        labelStyle: TEXT_STYLE.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: LIT_BOLD,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black, // Outline color
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.blue, // Outline color when focused
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color:
                                CONTAINER_COLOR, // Outline color when not focused
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  SizedBox(
                    height: 50,
                    width: 170,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter State/Province',
                        labelStyle: TEXT_STYLE.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: LIT_BOLD,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black, // Outline color
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.blue, // Outline color when focused
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color:
                                CONTAINER_COLOR, // Outline color when not focused
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                      ),
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
                  Text.rich(
                    TextSpan(
                      text: 'Country',
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF000000),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '*',
                          style: TEXT_STYLE.copyWith(
                            fontSize: SIZE_SM,
                            fontWeight: FontWeight.normal,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 135,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Postal Code',
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF000000),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '*',
                          style: TEXT_STYLE.copyWith(
                            fontSize: SIZE_SM,
                            fontWeight: FontWeight.normal,
                            color: Colors.red,
                          ),
                        ),
                      ],
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
                  SizedBox(
                    height: 50,
                    width: 170,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter Country',
                        labelStyle: TEXT_STYLE.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: LIT_BOLD,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black, // Outline color
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.blue, // Outline color when focused
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color:
                                CONTAINER_COLOR, // Outline color when not focused
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  SizedBox(
                    height: 50,
                    width: 170,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter Postal Code',
                        labelStyle: TEXT_STYLE.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: LIT_BOLD,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black, // Outline color
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.blue, // Outline color when focused
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color:
                                CONTAINER_COLOR, // Outline color when not focused
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                      ),
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
                  Text.rich(
                    TextSpan(
                      text: 'Current Password',
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF000000),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '*',
                          style: TEXT_STYLE.copyWith(
                            fontSize: SIZE_SM,
                            fontWeight: FontWeight.normal,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 63,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'New Password',
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF000000),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '*',
                          style: TEXT_STYLE.copyWith(
                            fontSize: SIZE_SM,
                            fontWeight: FontWeight.normal,
                            color: Colors.red,
                          ),
                        ),
                      ],
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
                  SizedBox(
                    height: 50,
                    width: 170,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter Current Password',
                        labelStyle: TEXT_STYLE.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: LIT_BOLD,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black, // Outline color
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.blue, // Outline color when focused
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color:
                                CONTAINER_COLOR, // Outline color when not focused
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  SizedBox(
                    height: 50,
                    width: 170,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter New Password',
                        labelStyle: TEXT_STYLE.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: LIT_BOLD,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black, // Outline color
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.blue, // Outline color when focused
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color:
                                CONTAINER_COLOR, // Outline color when not focused
                          ),
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                      ),
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
                  Text.rich(
                    TextSpan(
                      text: 'Confirm Password',
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF000000),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '*',
                          style: TEXT_STYLE.copyWith(
                            fontSize: SIZE_SM,
                            fontWeight: FontWeight.normal,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.010,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter New Password',
                  labelStyle: TEXT_STYLE.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: LIT_BOLD,
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black, // Outline color
                    ),
                    borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.blue, // Outline color when focused
                    ),
                    borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: CONTAINER_COLOR, // Outline color when not focused
                    ),
                    borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.030,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: SizedBox(
                      height: 40,
                      width: 100,
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
                          "Save",
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
