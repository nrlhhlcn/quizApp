class QuizSorulari {
  const QuizSorulari(this.soruMetni, this.soruCevaplari);
  final String soruMetni;
  final List<String> soruCevaplari;

  List<String> cevapKaristir() {
    final karisikCevap = List.of(soruCevaplari);
    karisikCevap.shuffle();
    return karisikCevap;
  }
}
