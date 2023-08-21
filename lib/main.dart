// import 'package:bshair/Login_page.dart';
// import 'package:bshair/Singup.dart';
// import 'package:bshair/List_page.dart';
// import 'package:bshair/example.dart';
// import 'package:bshair/home_page.dart';
// import 'package:bshair/Register_school.dart';
import 'package:bshair/home_page.dart';
// import 'package:bshair/Upload_image.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const Bshair());
}

class Bshair extends StatefulWidget {
  const Bshair({super.key});

  @override
  State<Bshair> createState() => _BshairState();
}

class _BshairState extends State<Bshair> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
