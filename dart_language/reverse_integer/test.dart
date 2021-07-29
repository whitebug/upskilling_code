void main() {
  final testMap = {
    '123': '321',
    '-123': '-321',
    '120': '21',
    '0': '0',
    '679834': '438976',
    '-353546': '-645353',
    '904864950090954': '459090059468409',
    '-2598437569676678': '-8766769657348952',
  };
  testMap.forEach((given, expected) {
    final success = expect(given, expected, reverseInteger(given));
    if (!success) return;
  });
}

bool expect(given, expected, actual) {
  if (actual == expected) {
    _result(true);
    return true;
  } else {
    _result(false, [
      'Test failed. Given: $given, expected: $expected, actual: $actual',
    ]);
    return false;
  }
}
