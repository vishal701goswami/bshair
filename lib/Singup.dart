import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  final passController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Sing Up",
          style: GoogleFonts.robotoSlab(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
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
                    label: const Text("Full Name"),
                    labelStyle: const TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 116, 116, 116)),
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
                          Color.fromARGB(255, 0, 184, 155),
                          Color.fromARGB(255, 237, 118, 8),
                        ],
                      ),
                      width: 3,
                    ),
                    label: const Text("Email"),
                    labelStyle: const TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 116, 116, 116)),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
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
                        fontSize: 18,
                        color: Color.fromARGB(255, 116, 116, 116)),
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
                          Color.fromARGB(255, 0, 184, 155),
                          Color.fromARGB(255, 237, 118, 8),
                        ],
                      ),
                      width: 3,
                    ),
                    label: const Text("EMP ID"),
                    labelStyle: const TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 116, 116, 116)),
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
                    label: const Text("RM code"),
                    labelStyle: const TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 116, 116, 116)),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Phonenumber(),
              ),
              const SizedBox(
                height: 30,
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
                    child: Text(
                      "Submit",
                      style: GoogleFonts.montserrat(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Phonenumber extends StatefulWidget {
  @override
  _PhonenumberState createState() => _PhonenumberState();
}

class _PhonenumberState extends State<Phonenumber> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'IN';
  var number = PhoneNumber(isoCode: 'IN');

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InternationalPhoneNumberInput(
              inputDecoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
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
              ),
              textStyle: const TextStyle(color: Colors.black),
              onInputChanged: (number) {
                print(number.phoneNumber);
              },
              onInputValidated: (bool value) {
                print(value);
              },
              selectorConfig: const SelectorConfig(
                selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
              ),
              ignoreBlank: false,
              autoValidateMode: AutovalidateMode.disabled,
              selectorTextStyle: const TextStyle(color: Colors.black),
              initialValue: number,
              textFieldController: controller,
              formatInput: true,
              keyboardType: const TextInputType.numberWithOptions(
                  signed: true, decimal: true),
              inputBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onSaved: (number) {
                print('On Saved: $number');
              },
            ),
          ],
        ),
      ),
    );
  }

  void getPhoneNumber(String phoneNumber) async {
    var number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'IN');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
