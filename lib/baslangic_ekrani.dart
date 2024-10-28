import 'package:flutter/material.dart';

class BaslangicEkrani extends StatelessWidget {
  const BaslangicEkrani(this.ekranDegistir, {super.key});
  final void Function() ekranDegistir;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 250,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Quiz App Uygulamasına Hoş Geldiniz",
            style: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: ekranDegistir,
            icon: const Icon(Icons.arrow_right),
            style: OutlinedButton.styleFrom(
              iconColor: Colors.white,
              foregroundColor: Colors.white,
            ),
            label: const Text(
              "Start Quiz",
            ),
          ),
        ],
      ),
    );
  }
}
