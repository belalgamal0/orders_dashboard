extension PriceStringExtension on String {
  double toPriceValue() {
    String cleanedString = replaceAll(RegExp(r'[^\d.,]'), '').replaceAll(',', '');
    return double.parse(cleanedString);
  }
}
extension DoubleFormatting on double {
  String formatToTwoDecimals() {
    String formatted = toStringAsFixed(2);
    return formatted.endsWith('.00') ? formatted.split('.')[0] : formatted;
  }
}
