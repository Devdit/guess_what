// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:guess_what/component/color.dart';

class SoalPage extends StatefulWidget {
  final answer = "Nama Warga";
  SoalPage({super.key});

  @override
  _SoalPageState createState() => _SoalPageState();
}

class _SoalPageState extends State<SoalPage> {
  final myInputController = TextEditingController();
  bool isCorrect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'images/gambar_soal/1.jpeg',
              width: 255,
              height: 255,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 98),
              child: TextField(
                controller: myInputController,
                decoration: InputDecoration(
                  hintText: 'Enter your answer here',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.2),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: ElevatedButton(
                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: secondaryColor,
                      foregroundColor: Colors.white
                    ),
                    onPressed: () {
                      if (myInputController.text.trim().toLowerCase() ==
                          widget.answer.toLowerCase()) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Benar!'),
                            content: Text('Jawaban Anda Benar'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('OK'),
                              ),
                            ],
                          ),
                        );
                        setState(() {
                          isCorrect = true;
                        });
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Salah'),
                            content: Text(
                                'Jawaban Anda Salah'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('OK'),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    child: Text('Submit'),
                  ),
                ),
                isCorrect
                ? ElevatedButton(
                    onPressed: null,
                    child: Text('Continue'),

                  )
                : Container(),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
