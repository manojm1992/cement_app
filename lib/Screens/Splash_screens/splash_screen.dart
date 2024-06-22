import 'package:e_com_app/Screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.light(useMaterial3: true),
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              BounceInUp(
                animate: animate,
                delay: const Duration(milliseconds: 300),
                onFinish: (direction) => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen())),
                child: const Square(),
                from: 250,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Square extends StatelessWidget {
  const Square({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      // color: Colors.blueAccent,
      child: Image.asset('assets/animations/Group 48095535.png'),
    );
  }
}
