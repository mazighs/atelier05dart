void verifierMotdepasse(String motDePasse) {
  if (motDePasse.length < 6) {
    throw Exception("le mot de passe doit contenir au moins 6 caracteres.");
    }
    }
    void main() {
      try {
        verifierMotdepasse("abc");
        print("Mot de passe valide ");
      } catch (e) {
        print("Erreur :$e");
      }
    }