extension StringEx on String? {
  bool get isEmptyString => _removeWhiteSpaces(this);

  bool _removeWhiteSpaces(String? str) {
    if (str == null) {
      return true;
    }
    final newStr = str.trim();
    return newStr.isEmpty;
  }
}
