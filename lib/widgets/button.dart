import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  const LanguageButton({super.key, required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        backgroundBlendMode: BlendMode.hardLight,
        borderRadius: BorderRadius.circular(15),
        color: Colors.red,
        border: Border.all(
          color: Colors.red,
          width: 3,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 23, 21, 21),
          border: Border.all(
            color: const Color.fromARGB(255, 23, 21, 21),
            width: 3,
          ),
        ),
        child: ElevatedButton(
          onPressed: onPress,
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(200, 50),
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xffE1202B),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )),
          child: Text(
            text,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
