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
  testMap.forEach((given, expected) {
    expect(given, expected, defangIpAddress(given));
  });
}

void expect(given, expected, actual) {
  if (actual == expected) {
    _result(true);
  } else {
    _result(false, [
      'Test failed. Given: $given, expected: $expected, actual: $actual',
    ]);
  }
}
