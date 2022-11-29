import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:security_guard/login_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/guard.png",
                height: 30,
                width: 30,
              ),
              const Text("SECURITY GUARD")
            ],
          )),
        ),
        body: Form(
          key: _formKey,
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/login-bg.png"), fit: BoxFit.fill),
            ),
            child: SingleChildScrollView(
              child: Container(
                width: 600,
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 70.0,
                    right: 70.0,
                    bottom: 30,
                    top: 10,
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/hccb-logo.png",
                        width: 100,
                        height: 100,
                      ),

                      TextFormField(
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r'\s')),
                        ],
                        decoration: InputDecoration(
                            hintText: "Enter Driver Name",
                            labelText: "Driver Name",
                            labelStyle: TextStyle(
                                color:
                                    const Color(0x00b4b4b4).withOpacity(0.6)),
                            hintStyle: TextStyle(
                                color:
                                    const Color(0x00b4b4b4).withOpacity(0.6)),
                            floatingLabelStyle: const TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0x00b4b4b4)),
                              borderRadius: BorderRadius.circular(12),
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Driver Name ?';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r'\s')),
                        ],
                        decoration: InputDecoration(
                            hintText: "Mobile Numver",
                            labelText: "Mobile Numver",
                            labelStyle: TextStyle(
                                color:
                                    const Color(0x00b4b4b4).withOpacity(0.6)),
                            hintStyle: TextStyle(
                                color:
                                    const Color(0x00b4b4b4).withOpacity(0.6)),
                            floatingLabelStyle: const TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0x00b4b4b4)),
                              borderRadius: BorderRadius.circular(12),
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Mobile Numver ?';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r'\s')),
                        ],
                        decoration: InputDecoration(
                            hintText: "Truck Number",
                            labelText: "Truck Number",
                            labelStyle: TextStyle(
                                color:
                                    const Color(0x00b4b4b4).withOpacity(0.6)),
                            hintStyle: TextStyle(
                                color:
                                    const Color(0x00b4b4b4).withOpacity(0.6)),
                            floatingLabelStyle: const TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0x00b4b4b4)),
                              borderRadius: BorderRadius.circular(12),
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Truck Number ?';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15))),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black)),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              FocusScope.of(context).unfocus();
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                            }
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                      // Container(
                      //   padding: EdgeInsets.only(top: 20,bottom: 20),
                      //   decoration: BoxDecoration(
                      //     color: Colors.black,
                      //     borderRadius: BorderRadius.circular(15)
                      //   ),
                      //   child: Center(
                      //     child: Text(
                      //       "Enter",
                      //       style: TextStyle(
                      //         font
                      //         color: Colors.white),
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
