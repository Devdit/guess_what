// ignore_for_file: sort_child_properties_last, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:guess_what/component/font.dart';

class SmallLockedButton extends StatelessWidget {
  final String buttonText;
  const SmallLockedButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
          height: 43,
          width: 180,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
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
                  style: TextStyle(fontFamily: mainFont, fontSize: 12),
                ),
              ),
            ),
          ),
        ),
    );
  }
}
