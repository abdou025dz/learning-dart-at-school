import 'dart:io';

void main() {
  bool isIsogram(String word) {
    // Remove spaces, hyphens and convert to lowercase
    String cleaned = word.toLowerCase().replaceAll(RegExp(r'[^a-z]'), '');

    // Compare length of list vs set (set removes duplicates)
    return cleaned.split('').length == cleaned.split('').toSet().length;
  }

  stdout.write('Enter a word or phrase: ');
  String word = stdin.readLineSync()!.trim();

  if (word.isEmpty) {
    print('Please enter a valid word.');
    return;
  }

  if (isIsogram(word)) {
    print('"$word" is an isogram ✓');
  } else {
    print('"$word" is not an isogram ✗');
  }
}