import 'package:flutter/material.dart';
import 'package:quiz_app/baslangic_ekrani.dart';
import 'package:quiz_app/soru_ekrani.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var mevcutEkran = "baslangic-ekrani";
  void ekranDegistir() {
    setState(() {
      mevcutEkran = "soru-ekrani";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget ekran =  BaslangicEkrani(ekranDegistir);
    if (mevcutEkran == "soru-ekrani") {
      ekran = const SoruEkrani();
    }
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(213, 2, 39, 173),
              Color.fromARGB(255, 1, 29, 76),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ekran,
      ),
    );
  }
}
