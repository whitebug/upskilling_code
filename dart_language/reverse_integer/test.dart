void main() {
  expect(123, 321, reverseInteger(123));
  expect(-123, -321, reverseInteger(-123));
  expect(679834, 438976, reverseInteger(679834));
  expect(-353546, -645353, reverseInteger(-353546));
  expect(904864950090954, 459090059468409, reverseInteger(904864950090954));
  expect(-2598437569676678, -8766769657348952, reverseInteger(-2598437569676678));
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
