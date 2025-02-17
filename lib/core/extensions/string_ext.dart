extension StringX on String {
  String only2DigitsDeciimal({required double number}) {
    String formattedValue = number.toStringAsFixed(2);
    return formattedValue;
  }
}

extension CapitalizeWordsExtension on String {
  String capitalizeWords() {
    List<String> words = split(' ');
    for (int i = 0; i < words.length; i++) {
      if (words[i].isNotEmpty) {
        words[i] =
            words[i][0].toUpperCase() + words[i].substring(1).toLowerCase();
      }
    }
    return words.join(' ');
  }
}

extension CapitalizeAllExtension on String {
  String capitalizeAll() {
    return toUpperCase();
  }
}
