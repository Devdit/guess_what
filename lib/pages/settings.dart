// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guess_what/component/color.dart';
import 'package:guess_what/component/font.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 80.0, right: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "SETTINGS",
              style: TextStyle(
                  fontFamily: mainFont, fontSize: 36, color: Colors.white),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Music",
                      style: TextStyle(
                          fontFamily: mainFont,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                    CupertinoSwitch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Colors.green,
                      trackColor: Colors.green[100],
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sound",
                      style: TextStyle(
                          fontFamily: mainFont,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                    CupertinoSwitch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Colors.green,
                      trackColor: Colors.green[100],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
