import 'package:flutter/material.dart';
import 'package:quiz_app/sorular.dart';

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
    var soru = sorular[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(soru.soruMetni),
          const SizedBox(
            height: 10,
          ),
          
          ElevatedButton(
            onPressed: () {},
            child: Text(soru.soruCevaplari[0]),
          ),
         

        ],
      ),
    );
  }
}
