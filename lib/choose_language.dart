import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_guard/inspection_form.dart';
import 'package:security_guard/widgets/button.dart';

class ChooseLanguage extends StatelessWidget {
  const ChooseLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xffE1202B),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.translate,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              Text(
                "SELECT LANGUAGE",
                style: GoogleFonts.poppins(fontSize: 24),
              )
            ],
          )),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/language_bg.png",
              fit: BoxFit.fill,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      "assets/hccb-logo.png",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 150),
                child: Wrap(
                  spacing: 50,
                  runSpacing: 50,
                  alignment: WrapAlignment.center,
                  children: [
                    LanguageButton(
                        text: "English",
                        onPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const InspectionForm("english")));
                        }),
                    LanguageButton(
                        text: "हिन्दी",
                        onPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const InspectionForm("hindi")));
                        }),
                    LanguageButton(
                        text: "ಕನ್ನಡ",
                        onPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const InspectionForm("kannada")));
                        }),
                    LanguageButton(
                        text: "ગુજરાતી",
                        onPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const InspectionForm("gujarati")));
                        }),
                    LanguageButton(
                        text: "తెలుగు",
                        onPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const InspectionForm("telugu")));
                        }),
                    LanguageButton(
                        text: "ಕನ್ನಡ",
                        onPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const InspectionForm("kannada")));
                        }),
                    LanguageButton(
                        text: "বাংলা",
                        onPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const InspectionForm("bangla")));
                        }),
                    LanguageButton(
                        text: "தமிழ்",
                        onPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const InspectionForm("tamil")));
                        }),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
