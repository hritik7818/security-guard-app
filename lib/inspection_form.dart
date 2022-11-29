import 'dart:io';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:security_guard/translate/trasnlate.dart';

class InspectionForm extends StatefulWidget {
  final String language;
  const InspectionForm(this.language, {super.key});

  @override
  State<InspectionForm> createState() => _InspectionFormState();
}

class _InspectionFormState extends State<InspectionForm> {
  late List<String> _selectedValues;
  bool headLight = false;
  late List<dynamic> _image;
  ImagePicker imagePicker = ImagePicker();
  late Map languageData;
  @override
  void initState() {
    super.initState();
    _selectedValues = List.filled(10, "no");
    _image = List.filled(10, null);
    if (widget.language == "hindi") {
      languageData = hindiTranslate;
    } else if (widget.language == "kannada") {
      languageData = kannadaTranslate;
    } else if (widget.language == "gujarati") {
      languageData = gujaratiTranslate;
    } else if (widget.language == "bangla") {
      languageData = banglaTranslate;
    } else if (widget.language == "tamil") {
      languageData = tamilTranslate;
    } else if (widget.language == "telugu") {
      languageData = teluguTranslate;
    }
  }

  _getFromCamera(i) async {
    // ignore: deprecated_member_use
    XFile? image = await imagePicker.pickImage(
        source: ImageSource.camera,
        imageQuality: 50,
        preferredCameraDevice: CameraDevice.front);
    if (image != null) {
      setState(() {
        _image[i] = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          (widget.language == "english")
              ? "INSPECTION FORM"
              : languageData["INSPECTION FORM"],
          style: GoogleFonts.poppins(
            fontSize: 24,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const DottedLine(
                  dashColor: Colors.black,
                ),
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return (index == 0)
                      ? Container(
                          color: Colors.white,
                          height: 65,
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 100),
                              child: ListTile(
                                tileColor: (index % 2 != 0)
                                    ? Colors.blue
                                    : Colors.white,
                                leading: Text(
                                  (widget.language == "english")
                                      ? "Hardware Check"
                                      : languageData["Hardware Check"],
                                  style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                title: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      (widget.language == "english")
                                          ? "Yes"
                                          : languageData["Yes"],
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      width: (widget.language == "telugu" ||
                                              widget.language == "kannada")
                                          ? 70
                                          : 115,
                                    ),
                                    Text(
                                      (widget.language == "english")
                                          ? "No"
                                          : languageData["No"],
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 80,
                                    )
                                  ],
                                ),
                                trailing: SizedBox(
                                    width: (widget.language == "tamil")
                                        ? 350
                                        : 400),
                              ),
                            ),
                          ),
                        )
                      : (index == 9)
                          ? const SizedBox()
                          : Container(
                              color: (index % 2 != 0)
                                  ? const Color(0xffF8F8F8)
                                  : Colors.white,
                              height: 65,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 90),
                                  child: ListTile(
                                    tileColor: (index % 2 != 0)
                                        ? const Color(0xffF8F8F8)
                                        : Colors.white,
                                    style: ListTileStyle.drawer,
                                    leading: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CircleAvatar(
                                          radius: 30,
                                          child: Container(
                                            width: double.infinity,
                                            height: double.infinity,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              gradient: LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                colors: [
                                                  Colors.red,
                                                  Colors.orange,
                                                  Colors.blue,
                                                  Colors.green,
                                                ],
                                              ),
                                            ),
                                            child: const Icon(
                                              Icons.rocket_launch_sharp,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          (widget.language == "english")
                                              ? "HEAD LIGHT"
                                              : languageData["HEAD LIGHT"],
                                          style: GoogleFonts.poppins(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                    title: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Radio(
                                          activeColor: Colors.green,
                                          value: "yes",
                                          groupValue: _selectedValues[index],
                                          onChanged: (value) {
                                            setState(() {
                                              _selectedValues[index] = value!;
                                            });
                                          },
                                        ),
                                        const SizedBox(
                                          width: 100,
                                        ),
                                        Radio(
                                          activeColor: Colors.red,
                                          value: "no",
                                          groupValue: _selectedValues[index],
                                          onChanged: (value) {
                                            setState(() {
                                              _selectedValues[index] = value!;
                                            });
                                          },
                                        ),
                                        const SizedBox(
                                          width: 90,
                                        )
                                      ],
                                    ),

                                    // contentPadding:
                                    //     const EdgeInsets.symmetric(horizontal: 30),
                                    trailing: _image[index] == null
                                        ? GestureDetector(
                                            onTap: () {
                                              _getFromCamera(index);
                                            },
                                            child: SizedBox(
                                              width: 400,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  const Icon(Icons
                                                      .file_upload_outlined),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    (widget.language ==
                                                            "english")
                                                        ? "Upload Image"
                                                        : languageData[
                                                            "Upload Image"],
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        : SizedBox(
                                            width: 200,
                                            child: Image.file(
                                              _image[index],
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                  ),
                                ),
                              ),
                            );
                }),
              ),
            ),
            Container(
              color: Colors.white,
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 98.0),
                    child: ElevatedButton(
                      onPressed: () {
                        print("------------------------");
                        print(widget.language);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        fixedSize: const Size(167, 65),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        (widget.language == "english")
                            ? "SUBMIT"
                            : languageData["SUBMIT"],
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
