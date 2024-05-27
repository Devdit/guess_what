// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:guess_what/component/color.dart';
import 'package:guess_what/component/font.dart';
import 'package:guess_what/component/main_button.dart';
import 'package:guess_what/component/locked_button.dart';

class StagePage extends StatelessWidget {
  const StagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "SELECT STAGE",
            style: TextStyle(
                fontFamily: mainFont, fontSize: 36, color: Colors.white),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MainButton(buttonText: "Stage 1", target: "/level"),
              LockedButton(buttonText: "Stage 2"),
              LockedButton(buttonText: "Stage 3"),
              LockedButton(buttonText: "Stage 4"),
            ],
          ),
        ],
      ),
    );
  }
}
