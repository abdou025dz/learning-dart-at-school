void main() {
  print(capitalize('une phrase courte'));
  print(capitalize('a lazy fox'));
  print(capitalize('regardez, ça marche !'));
}

String capitalize(String s) =>
    s.split(' ').map((w) => w[0].toUpperCase() + w.substring(1)).join(' ');