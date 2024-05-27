// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:guess_what/component/main_button.dart';
import 'package:guess_what/component/color.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            child: Image.asset("images/logo1.png", fit: BoxFit.cover),
            radius: 50,
            
          ),
          Column(
            children: [
              MainButton(buttonText: "Play", target: "/stage"),
              MainButton(buttonText: "How To Play", target: "/how"),
              MainButton(buttonText: "Setting", target: "/setting"),
            ],
          )
        ],
      ),
    );
  }
}
