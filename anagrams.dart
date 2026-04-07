void main() {
  List<String> findAnagrams(String target, List<String> candidates) {
    // Sort the letters of a word to compare
    String sortLetters(String word) {
      List<String> letters = word.toLowerCase().split('');
      letters.sort();
      return letters.join('');
    }

    String sortedTarget = sortLetters(target);

    return candidates.where((candidate) {
      // A word is not its own anagram
      if (candidate.toLowerCase() == target.toLowerCase()) return false;

      return sortLetters(candidate) == sortedTarget;
    }).toList();
  }

  print(findAnagrams('listen', ['enlist', 'google', 'inlets', 'banana'])); // [enlist, inlets]
  print(findAnagrams('stop', ['pots', 'stop', 'tops', 'hello']));          // [pots, tops]
  print(findAnagrams('master', ['stream', 'maters', 'master', 'result'])); // [stream, maters]
}