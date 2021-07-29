typedef TestFunction = int Function(int);

void main() {
  final testMap = {
    123: 321,
    -123: -321,
    120: 21,
    0: 0,
    679834: 438976,
    -353546: -645353,
    904864950090954: 459090059468409,
    -2598437569676678: -8766769657348952,
  };

  _test(testMap, reverseInteger);
}

void _test(Map testMap, TestFunction f) {
  for (final entry in testMap.entries) {
    final result = _expect(entry.key, entry.value, f(entry.key));
    if (result != null) {
      _result(false, result);
      return;
    }
  }

  _result(true);
}

List<String>? _expect(given, expected, actual) {
  if (actual == expected) {
    return null;
  } else {
    return ['Test failed.', '', 'Given: $given', 'Expected: $expected', 'Actual: $actual'];
  }
}
