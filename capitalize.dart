import 'dart:io';

void main() {
  String capitalize(String sentence) {
    return sentence.split(' ').map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ');
  }

  stdout.write('Enter a sentence: ');
  String input = stdin.readLineSync()!.trim();

  if (input.isEmpty) {
    print('Please enter a valid sentence.');
    return;
  }

  print(capitalize(input));
}
