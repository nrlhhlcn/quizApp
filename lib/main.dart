import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
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
        child: Center(
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
                onPressed: () {},
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
        ),
      ),
    ),
  ));
}
