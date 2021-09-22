bool isValidNum(String value) {
  const _hogeRegExpString = r'^[0-9]+$';
  return RegExp(_hogeRegExpString, caseSensitive: true).hasMatch(value);
}

bool isValidEmail(String value) {
  const _regExpString = r'^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$';
  return RegExp(_regExpString, caseSensitive: true).hasMatch(value);
}

bool isValidNumWithoutHyphen(String value) {
  const _hogeRegExpString = r'^[0-9\-]+$';
  return RegExp(_hogeRegExpString, caseSensitive: true).hasMatch(value);
}
