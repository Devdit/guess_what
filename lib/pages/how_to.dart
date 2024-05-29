// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:guess_what/component/color.dart';
import 'package:guess_what/component/font.dart';

class HowToPage extends StatelessWidget {
  const HowToPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      body: Column(
        children: [
          Text(
            "HOW TO PLAY",
            style: TextStyle(
                fontFamily: mainFont, fontSize: 36, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(32),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: Text(
                "1.Tekan tombol play untuk memulai permainan\n"
                "2. Pilih Level permainan anda\n"
                "3. Soal gambar akan muncul sesuai level yang di pilih\n"
                "4. Semakin tinggi level yang di raih maka semakin sulit\n"
                "5. Jawab soal dengan pilihan A/B/C\n"
                "6. Jawaban akan muncul menentukan benar atau salah\n"
                "7. Jika anda tidak bisa menjawab kami menyediakan fitur bantuan\n"
                "8. Fitur bantuan akan memunculkan clue jawaban\n"
                "9. Fitur bantuan memerlukan 1 poin hati untuk di gunakan\n",
                style: TextStyle(
                    fontSize: 18, color: Colors.black, fontFamily: mainFont),
              ),
            ),
          )
        ],
      ),
    );
  }
}
