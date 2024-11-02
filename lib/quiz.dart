import 'package:flutter/material.dart';
import 'package:quiz_app/baslangic_ekrani.dart';
import 'package:quiz_app/sonuc_ekrani.dart';
import 'package:quiz_app/soru_ekrani.dart';
import 'package:quiz_app/sorular.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> secilenCevaplar = [];
  void secilenCevapEkleme(String cevap) {
    secilenCevaplar.add(cevap);

    if (secilenCevaplar.length == sorular.length) {
      setState(() {
        secilenCevaplar = [];
        mevcutEkran = "sonuc-ekrani";
      });
    }
  }

  var mevcutEkran = "baslangic-ekrani";
  void ekranDegistir() {
    setState(() {
      mevcutEkran = "soru-ekrani";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget ekran = BaslangicEkrani(ekranDegistir);
    if (mevcutEkran == "soru-ekrani") {
      ekran = SoruEkrani(
        secilenCevap: secilenCevapEkleme,
      );
    }
    if (mevcutEkran == "sonuc-ekrani") {
      ekran = SonucEkrani(secilenCevaplar);
    }
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 153, 51),
              Color.fromARGB(255, 0, 179, 60),
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
