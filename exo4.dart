class MotdepasseCourtExeption implements Exception {
  @override
  String toString() =>
  "Erreur : le mot de passe doit contenir au moins 6 caracteres.";
}
void verifierMotdepasse(String motDePasse) {
  if (motDePasse.length < 6) {
    throw MotdepasseCourtExeption();
     }
  }
void main() {
  try {
    verifierMotdepasse("abc");
    print("Mot de passe valide");
  } on MotdepasseCourtExeption catch (e) {
    print(e);
  } finally {
    print("Verification terminee.");
  }
  }
  

