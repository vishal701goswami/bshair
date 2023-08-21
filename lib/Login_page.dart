import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final emailcontrtoller = TextEditingController();
  final emailmobileController = TextEditingController();
  final passController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 250,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color.fromARGB(255, 223, 223, 223),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: emailmobileController,
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
                  label: const Text("Email/Number"),
                  labelStyle: const TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 116, 116, 116)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: passController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                style: const TextStyle(color: Colors.black, fontSize: 18),
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      color: Colors.black,
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
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
                  label: const Text("Password"),
                  labelStyle: const TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 116, 116, 116)),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Forgot password",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
                const SizedBox(
                  width: 20,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 12, 128, 109),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "LogIn",
                  style: GoogleFonts.montserrat(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
