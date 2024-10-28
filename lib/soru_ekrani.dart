import 'package:flutter/material.dart';

class SoruEkrani extends StatefulWidget {
  const SoruEkrani({super.key});
  @override
  State<SoruEkrani> createState() {
    return _SoruEkraniState();
  }
}

class _SoruEkraniState extends State<SoruEkrani> {
  @override
  Widget build(BuildContext context) {
    return const Text("Soru ekranine geçildi");
  }
}
