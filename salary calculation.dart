import 'dart:io';

void main() {

  stdout.write("Entrez le taux horaire de base (HoHa): ");
  double tauxHoraire = double.parse(stdin.readLineSync()!);

  stdout.write("Entrez le nombre d'heures normales travaillées: ");
  double heuresNormales = double.parse(stdin.readLineSync()!);

  stdout.write("Entrez le nombre d'heures supplémentaires: ");
  double heuresSuppl = double.parse(stdin.readLineSync()!);

  stdout.write("Entrez le pourcentage de bonus (en %): ");
  double pourcentageBonus = double.parse(stdin.readLineSync()!) ;

  stdout.write("Entrez le montant des retenues: ");
  double retenues = double.parse(stdin.readLineSync()!);

  stdout.write("Entrez le taux d'imposition (en %): ");
  double tauxImposition = double.parse(stdin.readLineSync()!) ;

  stdout.write("Entrez le taux de charges sociales (en %): ");
  double tauxCharges = double.parse(stdin.readLineSync()!) ;

  
  double salaireBrut = (tauxHoraire * heuresNormales) + (tauxHoraire * 1.5 * heuresSuppl);
  double montantHeuresSuppl = tauxHoraire * 1.5 * heuresSuppl;
  double salaireTotalAvecBonus = salaireBrut + (salaireBrut * pourcentageBonus);
  double montantImpots = salaireTotalAvecBonus * tauxImposition;
  double montantCharges = salaireTotalAvecBonus * tauxCharges;
  double salaireNet = salaireTotalAvecBonus - montantImpots - montantCharges;
  double montantFinal = salaireNet - retenues;


  print("\nRésultats du calcul de salaire:");
  print("=============================");
  print("Salaire Brut: $salaireBrut");
  print("Montant des Heures Supplémentaires: $montantHeuresSuppl DH");
  print("Salaire Total avec Bonus: $salaireTotalAvecBonus DH");
  print("Montant des Impôts: $montantImpots DH");
  print("Montant des Charges Sociales: $montantCharges DH");
  print("Salaire Net: $salaireNet DH");
  print("Montant Final à Recevoir: $montantFinal DH");
}
