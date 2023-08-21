import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({super.key});

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Upload Image",
          style: GoogleFonts.robotoSlab(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              height: 360,
              width: 375,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 238, 238, 238),
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
              child: const Center(
                  child: Icon(
                Icons.image_outlined,
                size: 100,
                color: Colors.grey,
              )),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Center(
            child: Container(
              height: 60,
              width: 320,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 12, 128, 109),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.file_upload_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Upload Image",
                      style: GoogleFonts.montserrat(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
