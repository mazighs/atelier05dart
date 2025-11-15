import 'dart:io';void main() {
  try {
    stdout.write("Entrez votre age : ");
    final saisie = stdin.readLineSync();

    final age = int.parse(saisie!);
    print("Votre age est : $age");
  } on FormatException {
    print("Erreur de format : veuillez entrer un nombre valide !");
  } finally {
    print("Fin d'operation.");
  }
}
