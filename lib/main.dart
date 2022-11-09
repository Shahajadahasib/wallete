import 'package:flutter/material.dart';
import 'package:wallete/register.dart';
import 'package:wallete/screen/profilescreen.dart';
import 'package:wallete/screen/teamreport.dart';

import 'signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TeamReport(),
    );
  }
}
