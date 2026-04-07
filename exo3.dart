bool palindrome(String s) {
  s = s.toLowerCase().replaceAll(RegExp(r'[^a-z]'), '');
  return s == s.split('').reversed.join('');
}

void main() {
  print(palindrome('Abba'));    // true
  print(palindrome('abcdefg')); // false
}