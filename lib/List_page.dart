import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class Schoolslist extends StatefulWidget {
  const Schoolslist({super.key});

  @override
  State<Schoolslist> createState() => _SchoolslistState();
}

class _SchoolslistState extends State<Schoolslist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "List Page",
          style: GoogleFonts.robotoSlab(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                height: 320,
                width: 390,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: const GradientBoxBorder(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 237, 118, 8),
                        Color.fromARGB(255, 0, 184, 155),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    width: 3,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        height: 180,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Text("Maheshwari Girls public school",
                          style: GoogleFonts.montserrat(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(
                            Icons.pin_drop,
                            size: 30,
                          ),
                          Text("Sector 1Rd, sector2,Sector-1",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.w400))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
