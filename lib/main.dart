// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:guess_what/pages/how_to.dart';
import 'package:guess_what/pages/landing_page.dart';
import 'package:guess_what/pages/level.dart';
import 'package:guess_what/pages/settings.dart';
import 'package:guess_what/pages/soal.dart';
import 'package:guess_what/pages/stage.dart';

void main() async {
  runApp(MaterialApp(
    title: 'Guess What',
    initialRoute: '/',
    routes: {
      '/': (context) => const LandingPage(),
      '/stage': (context) => const StagePage(),
      '/level': (context) => const LevelPage(),
      '/soal': (context) => SoalPage(),
      '/how': (context) => const HowToPage(),
      '/setting': (context) => const SettingsPage(),
    },
  ));
}
