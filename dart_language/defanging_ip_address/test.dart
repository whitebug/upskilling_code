typedef TestFunction = String Function(String);

void main() {
  final testMap = {
    '213.186.33.2': '213[.]186[.]33[.]2',
    '188.165.7.2': '188[.]165[.]7[.]2',
    '94.23.79.2': '94[.]23[.]79[.]2',
    '87.98.255.2': '87[.]98[.]255[.]2',
    '188.165.31.2': '188[.]165[.]31[.]2',
    '255.255.255.255': '255[.]255[.]255[.]255',
    '0.0.0.0': '0[.]0[.]0[.]0',
  };

  _test(testMap, defangIpAddress);
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
