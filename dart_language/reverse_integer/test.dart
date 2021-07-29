void main() {
  _result(false, ['Test failed. It looks like you forgot the space!']);

  test('', () {
    expect(reverseInteger(123), 321);
  });
}

void expect(given, expected, actual) {
  if (input == matcher) {
    _result(true);
  } else {
    _result(false, [
      'Test failed. Given: $given, expected: $expected, actual: $actual',
      'Another string do not know why'
    ]);
  }
}
