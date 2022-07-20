import 'package:book_grocer_with_flutter/screens/out_boarding_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/out_boarding_screen',
      routes: {
        '/out_boarding_screen': (context) => const OutBoardingScreen(),
      },
    );
  }
}
