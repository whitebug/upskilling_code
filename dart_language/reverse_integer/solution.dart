int reverseInteger(int input) {
  return int.tryParse(input.toString().split('').reversed.join());
}
