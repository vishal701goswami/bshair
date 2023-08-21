import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

class RegisterSchool extends StatefulWidget {
  const RegisterSchool({super.key});

  @override
  State<RegisterSchool> createState() => _RegisterSchoolState();
}

class _RegisterSchoolState extends State<RegisterSchool> {
  bool _isInitialValue = true;
  // bool _isInitialValue2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Register School",
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
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 30,
                ),
                Text("Add School",
                    style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                // controller: emailmobileController,
                style: const TextStyle(color: Colors.black, fontSize: 18),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 238, 238, 238),
                  border: GradientOutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 237, 118, 8),
                        Color.fromARGB(255, 0, 184, 155),
                      ],
                    ),
                    width: 3,
                  ),
                  label: const Text("School name"),
                  labelStyle: const TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 116, 116, 116),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                // controller: emailmobileController,
                style: const TextStyle(color: Colors.black, fontSize: 18),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 238, 238, 238),
                  border: GradientOutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 0, 184, 155),
                        Color.fromARGB(255, 237, 118, 8),
                      ],
                    ),
                    width: 3,
                  ),
                  label: const Text("Official Email"),
                  labelStyle: const TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 116, 116, 116),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                // controller: emailmobileController,
                style: const TextStyle(color: Colors.black, fontSize: 18),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 238, 238, 238),
                  border: GradientOutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 237, 118, 8),
                        Color.fromARGB(255, 0, 184, 155),
                      ],
                    ),
                    width: 3,
                  ),
                  label: const Text("Address"),
                  labelStyle: const TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 116, 116, 116),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _isInitialValue = !_isInitialValue;
                      });
                    },
                    child: Text(
                      "Contact info",
                      style: GoogleFonts.robotoSlab(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  // OutlinedButton(
                  //   child: Text(
                  //     "Contact info",
                  //     style: GoogleFonts.robotoSlab(
                  //         fontSize: 17,
                  //         fontWeight: FontWeight.bold,
                  //         color: Colors.black),
                  //   ),
                  //   onPressed: () {
                  //     setState(() {
                  //       _isInitialValue = !_isInitialValue;
                  //     });
                  //   },
                  // ),
                ],
              ),
            ),
            Center(
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: _isInitialValue ? 0 : 320,
                width: 410,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: const GradientBoxBorder(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 237, 118, 8),
                        Color.fromARGB(255, 0, 184, 155),
                      ],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                    ),
                    width: 3,
                  ),
                ),
                child: ListView(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: TextFormField(
                            // controller: emailmobileController,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 18),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor:
                                  const Color.fromARGB(255, 238, 238, 238),
                              border: GradientOutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 237, 118, 8),
                                    Color.fromARGB(255, 0, 184, 155),
                                  ],
                                ),
                                width: 3,
                              ),
                              label: const Text("Name"),
                              labelStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 116, 116, 116),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: TextFormField(
                            // controller: emailmobileController,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 18),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor:
                                  const Color.fromARGB(255, 238, 238, 238),
                              border: GradientOutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 0, 184, 155),
                                    Color.fromARGB(255, 237, 118, 8),
                                  ],
                                ),
                                width: 3,
                              ),
                              label: const Text("Number"),
                              labelStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 116, 116, 116),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: TextFormField(
                            // controller: emailmobileController,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 18),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor:
                                  const Color.fromARGB(255, 238, 238, 238),
                              border: GradientOutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 237, 118, 8),
                                    Color.fromARGB(255, 0, 184, 155),
                                  ],
                                ),
                                width: 3,
                              ),
                              label: const Text("RM ID"),
                              labelStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 116, 116, 116),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                // controller: emailmobileController,
                style: const TextStyle(color: Colors.black, fontSize: 18),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 238, 238, 238),
                  border: GradientOutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 237, 118, 8),
                        Color.fromARGB(255, 0, 184, 155),
                      ],
                    ),
                    width: 3,
                  ),
                  label: const Text("Address"),
                  labelStyle: const TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 116, 116, 116),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                // controller: emailmobileController,
                style: const TextStyle(color: Colors.black, fontSize: 18),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 238, 238, 238),
                  border: GradientOutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 0, 184, 155),
                        Color.fromARGB(255, 237, 118, 8),
                      ],
                    ),
                    width: 3,
                  ),
                  label: const Text("Board"),
                  labelStyle: const TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 116, 116, 116),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 62,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 238, 238, 238),
                    borderRadius: BorderRadius.circular(15),
                    border: const GradientBoxBorder(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 0, 184, 155),
                          Color.fromARGB(255, 237, 118, 8),
                        ],
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                      ),
                      width: 3,
                    ),
                  ),
                  child: const ListTile(
                    leading: Text(
                      "Medium",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 116, 116, 116),
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      size: 40,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 62,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 238, 238, 238),
                    borderRadius: BorderRadius.circular(15),
                    border: const GradientBoxBorder(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 237, 118, 8),
                          Color.fromARGB(255, 0, 184, 155),
                        ],
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                      ),
                      width: 3,
                    ),
                  ),
                  child: const ListTile(
                    leading: Text(
                      "Type",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 116, 116, 116),
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      size: 40,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 62,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 238, 238, 238),
                    borderRadius: BorderRadius.circular(15),
                    border: const GradientBoxBorder(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 0, 184, 155),
                          Color.fromARGB(255, 237, 118, 8),
                        ],
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                      ),
                      width: 3,
                    ),
                  ),
                  child: const ListTile(
                    leading: Text(
                      "School type",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 116, 116, 116),
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      size: 40,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 62,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 238, 238, 238),
                    borderRadius: BorderRadius.circular(15),
                    border: const GradientBoxBorder(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 0, 184, 155),
                          Color.fromARGB(255, 237, 118, 8),
                        ],
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                      ),
                      width: 3,
                    ),
                  ),
                  child: const ListTile(
                    leading: Text(
                      "Eligibility",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 116, 116, 116),
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      size: 40,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                // controller: emailmobileController,
                style: const TextStyle(color: Colors.black, fontSize: 18),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 238, 238, 238),
                  border: GradientOutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 237, 118, 8),
                        Color.fromARGB(255, 0, 184, 155),
                      ],
                    ),
                    width: 3,
                  ),
                  label: const Text("Subjects"),
                  labelStyle: const TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 116, 116, 116),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                maxLines: 5,
                // controller: emailmobileController,
                style: const TextStyle(color: Colors.black, fontSize: 18),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 238, 238, 238),
                  border: GradientOutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 237, 118, 8),
                        Color.fromARGB(255, 0, 184, 155),
                      ],
                    ),
                    width: 3,
                  ),
                  label: const Text("School Description"),
                  labelStyle: const TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 116, 116, 116),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                maxLines: 4,
                // controller: emailmobileController,
                style: const TextStyle(color: Colors.black, fontSize: 18),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 238, 238, 238),
                  border: GradientOutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 237, 118, 8),
                        Color.fromARGB(255, 0, 184, 155),
                      ],
                    ),
                    width: 3,
                  ),
                  label: const Text("Principle Thoght"),
                  labelStyle: const TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 116, 116, 116),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                // controller: emailmobileController,
                style: const TextStyle(color: Colors.black, fontSize: 18),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 238, 238, 238),
                  border: GradientOutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 237, 118, 8),
                        Color.fromARGB(255, 0, 184, 155),
                      ],
                    ),
                    width: 3,
                  ),
                  label: const Text("Stream"),
                  labelStyle: const TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 116, 116, 116),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
