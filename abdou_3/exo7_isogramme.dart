import 'dart:io';

void main() {
  stdout.write("Enter your name: ");
  String? input = stdin.readLineSync();
  if (input == null || input.isEmpty) return;

  bool isIsogram = input.toLowerCase().split('').toSet().length != input.length;
  print("$input is ${isIsogram ? '' : 'NOT '}an isogram!");
}