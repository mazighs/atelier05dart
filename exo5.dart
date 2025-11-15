import 'dart:io';
class NombreNegatifException implements Exception {
  final num valeur;
  NombreNegatifException(this.valeur);
  @override
  String toString() => "erreur : le nombre ne peut pas etre negatif ($valeur).";
}
void main() {
  
  stdout.write("Entrez un nombre : ");
  final ligne = stdin.readLineSync();
   
   if (ligne == null || ligne.trim().isEmpty) {     
    print("Erreur de format : entree vide.");
     print("Fin du programme.");
      return;
   }

      try {
        final nombre = num.parse(ligne.trim());
        
        if (nombre < 0) {
          throw NombreNegatifException(nombre);
        }
        print("le carre de $nombre est : ${nombre * nombre}");
      } on FormatException {
        print("Erreur de format : veuillez entrer un nombre numeriquue valide !");
      } on NombreNegatifException catch (e) {
      print(e.toString());
      } finally {
        print("Fin du programme.");
        }
        }

        