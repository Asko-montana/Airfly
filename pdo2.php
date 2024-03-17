<?php
try
{
$bdd = new PDO('mysql:host=localhost;dbname=airjet;charset=utf8', 'root', '');
}
catch (Exception $e)
{
die('Erreur : ' . $e->getMessage());
}
$req = $bdd->prepare('INSERT INTO informations_perso (id, Nom, Prenom, Adresse_email, Numero_de_telephone) VALUES(:id, :Nom, :Prenom, :Adresse_email, :Numero_de_telephone)');
$req->execute(array(
'id' => $_POST['id'],
'Nom' => $_POST['Nom'],
'Prenom'=> $_POST['Prenom'],
'Adresse_email' => $_POST['Adresse_email'],
'Numero_de_telephone' => $_POST['Numero_de_telephone']
));

$req2 = $bdd->prepare('INSERT INTO informations_de_paiement (Type_de_carte_de_credit, Numero_de_carte_de_credit) VALUES(:Type_de_carte_de_credit, :Numero_de_carte_de_credit)');
$req2->execute(array(
'Type_de_carte_de_credit' => $_POST['Type_de_carte_de_credit'],
'Numero_de_carte_de_credit' => $_POST['Numero_de_carte_de_credit']
));

$req3 = $bdd->prepare('INSERT INTO options_supplementaires (Bagages_supplementaires, Repas_speciaux, Siege_preferentiel) VALUES(:Bagages_supplementaires, :Repas_speciaux, :Siege_preferentiel)');
$req3->execute(array(
'Bagages_supplementaires' => $_POST['Bagages_supplementaires'],
'Repas_speciaux' => $_POST['Repas_speciaux'],
'Siege_preferentiel' => $_POST['Siege_preferentiel']
));

$req4 = $bdd->prepare('INSERT INTO detail_du_vol (Ville_depart, Ville_arrivee, Date_depart, Date_retour, Nombre_de_passagers, Classe_de_voyage) VALUES(:Ville_depart, :Ville_arrivee, :Date_depart, :Date_retour, :Nombre_de_passagers, :Classe_de_voyage)');
$req4->execute(array(
'Ville_depart' => $_POST['Ville_depart'],
'Ville_arrivee' => $_POST['Ville_arrivee'],
'Date_depart' => $_POST['Date_depart'],
'Date_retour' => $_POST['Date_retour'],
'Nombre_de_passagers' => $_POST['Nombre_de_passagers'],
'Classe_de_voyage' => $_POST['Classe_de_voyage'],


));

?>