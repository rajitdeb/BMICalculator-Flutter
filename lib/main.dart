import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
        useMaterial3: false,
      ),

      // WHEN WE WANT TO CHANGE A FEW THINGS BUT KEEP THE REST OF THE THEME INTACT
      //
      // theme: ThemeData.dark().copyWith(
      //   appBarTheme: AppBarTheme(
      //     backgroundColor: Color(0xFF0A0E21),
      //   ),
      //   scaffoldBackgroundColor: Color(0xFF0A0E21),
      // ),
      home: const MyHomePage(),
    );
  }
}
