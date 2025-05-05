// this is the history.dart files main

import 'package:flutter/material.dart';
import './history//history.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trip History App',
      theme: ThemeData(
        primaryColor: const Color(0xFF0D2848),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HistoryScreen(),
    );
  }
}

// import 'package:flutter/material.dart';
// import './profile//profile.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Profile App',
//       theme: ThemeData(
//         primaryColor: const Color(0xFF0D2848),
//         scaffoldBackgroundColor: const Color(0xFF0D2848),
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: const ProfileScreen(),
//     );
//   }
// }
