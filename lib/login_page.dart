import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:security_guard/choose_language.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            child: Builder(builder: (context) {
              return SingleChildScrollView(
                child: Container(
                  width: 600,
                  height: 510,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(70.0),
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
                              hintText: "Enter Branch ID",
                              labelText: "Branch ID",
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
                              return 'Please enter Branch ID ?';
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
                              hintText: "Password",
                              labelText: "Password",
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
                              return 'Please enter password ?';
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
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black)),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                FocusScope.of(context).unfocus();
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const ChooseLanguage()));
                              }
                            },
                            child: const Text(
                              "Login",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
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
              );
            }),
          ),
        ));
  }
}
