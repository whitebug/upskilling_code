typedef TestFunction = String? Function(List<String>);

void main() {
  final Map<List<String>, String?> testMap = {
    ['flower', 'flow', 'flight', 'flutter']: 'fl',
    []: null,
    ['foo']: null,
    [
      'achillobursitis',
      'achillodynia',
      'achillotomy',
      'achimenes',
    ]: 'achi',
    [
      'actinobacillosis',
      'actinobacillus',
      'actinobiology',
      'actinochemistry',
      'actinodermatitis',
      'actinodrome',
      'actinogram',
      'actinograph',
      'actinoid',
      'actinolite',
      'actinology'
    ]: 'actino',
    ['so', 'many', 'books', 'so', 'little', 'time']: null,
    ['veni', 'vidi', 'vici']: 'v',
    ['dog', 'racecar', 'car']: null,
  };

  _test(testMap, longestCommonPrefix);
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
