extension StringEx on String? {
  bool get isEmptyString => _removeWhiteSpaces(this);

  bool _removeWhiteSpaces(String? str) {
    if (str == null) {
      return true;
    }
    final newStr = str.trim();
    return newStr.isEmpty;
  }

  String? clipToMaxLength(int maxLength) {
    if (this == null) {
      return null;
    } else if (this!.length < maxLength) {
      return this;
    }
    return this?.substring(0, maxLength);
  }
}
