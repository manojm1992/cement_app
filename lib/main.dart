import 'package:e_com_app/Provider/Favorite_Model/favorite_model.dart';
import 'package:e_com_app/Screens/Favorite_Page/favorite_screen.dart';
import 'package:e_com_app/Screens/Splash_screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
        providers:[
          ChangeNotifierProvider(create: (_)=> FavoritesProvider()),
        ],
  child: const MyApp(),
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: ThemeData(
        fontFamily: "Poppins",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),

      // const OrderConfirmedPage(),
    );
  }
}
