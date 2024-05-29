  // ignore_for_file: sort_child_properties_last, non_constant_identifier_names, prefer_const_constructors

  import 'package:flutter/material.dart';
  import 'package:guess_what/component/color.dart';
  import 'package:guess_what/component/font.dart';

  class MainButton extends StatelessWidget {
    final String buttonText;
    final String target;
    const MainButton({super.key, required this.buttonText, required this.target});

    @override
    Widget build(BuildContext context) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 74, right: 74, bottom: 18),
          child: SizedBox(
            height: 45,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {

                Navigator.pushNamed(context, target);
              },
              child: Text(
                buttonText,
                style: TextStyle(fontFamily: mainFont, fontSize: mainFontSize),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: secondaryColor,
                foregroundColor: Colors.white,
              ),
            ),
          ),
        ),
      );
    }
  }
