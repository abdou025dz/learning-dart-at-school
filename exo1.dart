bool estBissextile(int annee) {
  return (annee % 4 == 0 && annee % 100 != 0) || (annee % 400 == 0);
}

void main() {
  print(estBissextile(2024)); // true
  print(estBissextile(1900)); // false
  print(estBissextile(2000)); // true
}