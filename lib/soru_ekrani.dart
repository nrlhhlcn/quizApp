import 'package:flutter/material.dart';
import 'package:quiz_app/cevap_butonlar.dart';
import 'package:quiz_app/sorular.dart';

class SoruEkrani extends StatefulWidget {
  const SoruEkrani({super.key});
  @override
  State<SoruEkrani> createState() {
    return _SoruEkraniState();
  }
}

class _SoruEkraniState extends State<SoruEkrani> {
  var soruNumarasi = 0;
  void soruDegistir() {
    setState(() {
      soruNumarasi++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var soru = sorular[soruNumarasi];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipOval(
              child: Image.asset(
                'assets/images/resim-$soruNumarasi.jpg',
                width: 100,
                height: 300,

                fit: BoxFit.fill, // Resmi alana sığdırır
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              soru.soruMetni,
              style: const TextStyle(
                color: Color.fromARGB(255, 242, 242, 244),
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            ...soru.cevapKaristir().map(
              (answer) {
                return CevapButonlar(
                  soruDegistir: soruDegistir,
                  metin: answer,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
