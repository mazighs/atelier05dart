void main () {
  try { 
    final resultat = 12 ~/ 0;
    print("Resultat :$resultat");
  } catch (e) {
    print("division impossible");
  }  
  }