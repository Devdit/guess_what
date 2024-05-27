// ignore_for_file: sort_child_properties_last, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:guess_what/component/color.dart';
import 'package:guess_what/component/font.dart';

class LockedButton extends StatelessWidget {
  final String buttonText;
  const LockedButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 74, right: 74, bottom: 18),
        child: SizedBox(
          height: 45,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 46, 40, 40),
              foregroundColor: Colors.white,
            ),
            child: TextButton.icon(
              onPressed: null,
              icon: const Icon(Icons.lock), // Add the icon here
              label: Text(
                buttonText,
                style: TextStyle(fontFamily: mainFont, fontSize: mainFontSize),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
