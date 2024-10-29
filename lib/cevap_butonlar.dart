import 'package:flutter/material.dart';

class CevapButonlar extends StatelessWidget {
  const CevapButonlar({
    super.key,
    required this.soruDegistir,
    required this.metin,
  });
  final void Function() soruDegistir;
  final String metin;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: soruDegistir,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 10,
        ),
        backgroundColor: const Color.fromARGB(
          255,
          0,
          102,
          34,
        ),
      ),
      child: Text(metin),
    );
  }
}
