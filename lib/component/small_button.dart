// ignore_for_file: sort_child_properties_last, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:guess_what/component/color.dart';
import 'package:guess_what/component/font.dart';

class SmallButton extends StatelessWidget {
  final String buttonText;
  final String target;
  const SmallButton(
      {super.key, required this.buttonText, required this.target});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 43,
        width: 180,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, target);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: secondaryColor,
              foregroundColor: Colors.white,
            ),
            child: Text(
              buttonText,
              style: TextStyle(fontFamily: mainFont, fontSize: 12),
            ),
          ),
        ),
      ),
    );
  }
}
