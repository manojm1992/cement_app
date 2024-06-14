import 'package:e_com_app/Global/constants.dart';
import 'package:e_com_app/Screens/Bottom_Nav_Bar/bottom_nav_bar.dart';
import 'package:e_com_app/Screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Color googleColor = const Color.fromRGBO(66, 133, 244, 1.0);
  bool isChecked = false;
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome Back, SK Cement',
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_XXL,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF001F3F),
                    ),
                  ),
                ],
              ),
              Text(
                'Welcome back! Please enter your details.',
                selectionColor: LIT_BOLD,
                style: TEXT_STYLE.copyWith(
                  fontSize: SIZE_SM,
                  fontWeight: FontWeight.normal,
                  color: LIT_BOLD,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              TextFormField(
                autocorrect: true,
                autofocus: false,
                style: const TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  hintText: 'Email',
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              TextFormField(
                autofocus: false,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TEXT_STYLE.copyWith(
                    fontSize: SIZE_SM,
                    fontWeight: FontWeight.normal,
                    color: LIT_BOLD,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                ),
                obscureText: _obscurePassword,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.008,
              ),
              Row(
                children: [
Text("rrrr"),
                  Expanded(
                    flex: 1,
                    child: Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      shape: OutlinedBorder.lerp(
                        const CircleBorder(),
                        const RoundedRectangleBorder(),
                        0.5,
                      ),
                      activeColor: BOLD,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      "Remember me",
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.bold,
                        color: BOLD,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 45),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TEXT_STYLE.copyWith(
                          fontSize: SIZE_SM,
                          fontWeight: FontWeight.bold,
                          color: BOLD,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(BOLD),
                      shape: const WidgetStatePropertyAll(
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
                      "Login",
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFD3D3D3),
                      ),
                    ),
                  ),
                ),
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
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Colors.white),
                        shape: const WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                        side: WidgetStateProperty.all<BorderSide>(
                          const BorderSide(color: Colors.black, width: 1.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.google,
                              size: 35.0, color: googleColor),
                          const SizedBox(width: 35),
                          Text(
                            "Continue with Google",
                            style: TEXT_STYLE.copyWith(
                              fontSize: SIZE_SM,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TEXT_STYLE.copyWith(
                      fontSize: SIZE_SM,
                      fontWeight: FontWeight.normal,
                      color: LIT_BOLD,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()));
                    },
                    child: Text(
                      "Register",
                      style: TEXT_STYLE.copyWith(
                        fontSize: SIZE_SM,
                        fontWeight: FontWeight.bold,
                        color: BOLD,
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
