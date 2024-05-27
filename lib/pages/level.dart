// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:guess_what/component/color.dart';
import 'package:guess_what/component/font.dart';
import 'package:guess_what/component/locked_button.dart';
import 'package:guess_what/component/small_button.dart';
import 'package:guess_what/component/small_locked_button.dart';

class LevelPage extends StatelessWidget {
  const LevelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "SELECT LEVEL",
              style: TextStyle(
                  fontFamily: mainFont, fontSize: 36, color: Colors.white),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SmallButton(buttonText: "Level 1", target: "/soal"),
                        SmallLockedButton(buttonText: "Level 3"),
                        SmallLockedButton(buttonText: "Level 5"),
                        SmallLockedButton(buttonText: "Level 7"),
                        SmallLockedButton(buttonText: "Level 9"),
                        SmallLockedButton(buttonText: "Level 11"),
                        SmallLockedButton(buttonText: "Level 13"),
                        SmallLockedButton(buttonText: "Level 15"),
                        SmallLockedButton(buttonText: "Level 17"),
                        SmallLockedButton(buttonText: "Level 19"),
                      ],
                    ),
                    Column(
                      children: [
                        SmallLockedButton(buttonText: "Level 2"),
                        SmallLockedButton(buttonText: "Level 4"),
                        SmallLockedButton(buttonText: "Level 6"),
                        SmallLockedButton(buttonText: "Level 8"),
                        SmallLockedButton(buttonText: "Level 10"),
                        SmallLockedButton(buttonText: "Level 12"),
                        SmallLockedButton(buttonText: "Level 14"),
                        SmallLockedButton(buttonText: "Level 16"),
                        SmallLockedButton(buttonText: "Level 18"),
                        SmallLockedButton(buttonText: "Level 20"),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
