<?php
$mdp = "MrParrotTest!2023";
$mdpHash = password_hash($mdp, PASSWORD_DEFAULT);
//Pour configuré votre serveur veuillez remplir le nom de la DB , l'utilisateur, le mot de pass, host et le port utilisé
$dbname = '';// ici le db name marsaudolivier_garageparrot 
$user = ''; // ici rentré utilisateur pour usage local "root"
$pass = '';// ici rentré pass pour usage local "root"
$host = ''; // ici localhost
$port = ''; // ici le port utilisé par votre local host
try {
    $pdo = new PDO("mysql:dbname=$dbname;host=$host;port=$port;charset=utf8mb4", $user, $pass);
    $sql = "INSERT INTO Utilisateurs(nom, prenom, mail, mdp, Id_Roles) VALUES ('Parrot', 'Vincent', 'garageparot@mail.fr', :mdpHash, 1)";
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':mdpHash', $mdpHash, PDO::PARAM_STR);
    $stmt->execute();

    echo "Utilisateur ajouté avec succès.";
} catch (PDOException $e) {
    echo "Erreur : " . $e->getMessage();
}
?>
