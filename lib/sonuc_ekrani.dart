import 'package:flutter/material.dart';

class SonucEkrani extends StatelessWidget {
  const SonucEkrani(this.secilenCevaplar, {super.key});
  final List<String> secilenCevaplar;

  @override
  Widget build(BuildContext context) {

    return Center(
        child: Container(
      margin: const EdgeInsets.all(30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("kaç soru doğru"),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.restart_alt),
            label: const Text("Tekrar Dene"),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 11, 151, 15),
              foregroundColor: Colors.white,
            ),
          )
        ],
      ),
    ));
  }
}
