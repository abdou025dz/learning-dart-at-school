bool palindrome(String s) {
  s = s.toLowerCase().replaceAll(RegExp(r'[^a-z]'), '');
  for (int i = 0, j = s.length - 1; i < j; i++, j--)
    if (s[i] != s[j]) return false;
  return true;
}

void main() {
  print(palindrome('Abba'));    // true
  print(palindrome('abcdefg')); // false
}