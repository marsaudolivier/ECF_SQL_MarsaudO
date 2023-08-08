CREATE TABLE Roles(
   Id_Roles INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   role VARCHAR(20)
);
CREATE TABLE Services(
    Id_Services INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50),
    description TEXT
);
CREATE TABLE Formulaires(
    Id_Formulaires INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    mail VARCHAR(50),
    telephone VARCHAR(13),
    message TEXT
);
CREATE TABLE Validations(
    Id_Validations INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    valider VARCHAR(10)
);
CREATE TABLE Jours(
    Id_Jours INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    jour VARCHAR(10)
);
CREATE TABLE Heures(
    Id_Heures INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Ouverture VARCHAR(10),
    Fermeture VARCHAR(10)
);
CREATE TABLE Marques(
    Id_Marques INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50)
);
CREATE TABLE Modeles(
    Id_Modeles INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50),
    FOREIGN KEY(Id_Marques) REFERENCES Marques(Id_Marques)
);
CREATE TABLE Energies(
    Id_Energies INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50)
);
CREATE TABLE Utilisateurs(
    Id_Utilisateurs INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    mail VARCHAR(50) NOT NULL,
    mdp VARCHAR(60) NOT NULL,
    role VARCHAR(20),
    FOREIGN KEY(Id_Formulaires) REFERENCES Formulaires(Id_Formulaires),
    FOREIGN KEY(Id_Services) REFERENCES Services(Id_Services),
    FOREIGN KEY(Id_Roles) REFERENCES Roles(Id_Roles)
);
CREATE TABLE Avis(
    Id_Avis INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    commentaire TEXT,
    notes INT,
    FOREIGN KEY(Id_Validations) REFERENCES Validations(Id_Validations)
);
CREATE TABLE Voitures(
    Id_Voitures INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    annee INT,
    kilometrage INT,
    prix DECIMAL(5,0),
    photo_principal VARCHAR(50),
    description TEXT,
    FOREIGN KEY(Id_Marques) REFERENCES Marques(Id_Marques)
);
CREATE TABLE Photos(
    Id_Photos INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    photo_secondaire VARCHAR(50),
    FOREIGN KEY(Id_Voitures) REFERENCES Voitures(Id_Voitures)
);
CREATE TABLE Annonces(
    Id_Annonces INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(50),
    date_publication DATE,
    FOREIGN KEY(Id_Voitures) REFERENCES Voitures(Id_Voitures)
);
CREATE TABLE poster(
    Id_Utilisateurs INT,
    Id_Avis INT,
    PRIMARY KEY(Id_Utilisateurs, Id_Avis),
    FOREIGN KEY(Id_Utilisateurs) REFERENCES Utilisateurs(Id_Utilisateurs),
    FOREIGN KEY(Id_Avis) REFERENCES Avis(Id_Avis)
);
CREATE TABLE ouvrir(
    Id_Utilisateurs INT,
    Id_Jours INT,
    PRIMARY KEY(Id_Utilisateurs, Id_Jours),
    FOREIGN KEY(Id_Utilisateurs) REFERENCES Utilisateurs(Id_Utilisateurs),
    FOREIGN KEY(Id_Jours) REFERENCES Jours(Id_Jours)
);
CREATE TABLE durer(
    Id_Jours INT,
    Id_Heures INT,
    PRIMARY KEY(Id_Jours, Id_Heures),
    FOREIGN KEY(Id_Jours) REFERENCES Jours(Id_Jours),
    FOREIGN KEY(Id_Heures) REFERENCES Heures(Id_Heures)
);
CREATE TABLE publier(
    Id_Utilisateurs INT,
    Id_Annonces INT,
    PRIMARY KEY(Id_Utilisateurs, Id_Annonces),
    FOREIGN KEY(Id_Utilisateurs) REFERENCES Utilisateurs(Id_Utilisateurs),
    FOREIGN KEY(Id_Annonces) REFERENCES Annonces(Id_Annonces)
);
CREATE TABLE consommer(
    Id_Modeles INT,
    Id_Energies INT,
    PRIMARY KEY(Id_Modeles, Id_Energies),
    FOREIGN KEY(Id_Modeles) REFERENCES Modeles(Id_Modeles),
    FOREIGN KEY(Id_Energies) REFERENCES Energies(Id_Energies)
);