CREATE TABLE Roles(
   Id_Roles INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   role VARCHAR(14) NOT NULL
);
CREATE TABLE Motifs(
    Id_Motifs INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    motif VARCHAR(50) NOT NULL
);
CREATE TABLE Marques(
    Id_Marques INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    marque VARCHAR(50) NOT NULL
);
CREATE TABLE Modeles(
    Id_Modeles INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    modele VARCHAR(50) NOT NULL,
    Id_Marques INT NOT NULL,
    FOREIGN KEY(Id_Marques) REFERENCES Marques(Id_Marques)
);
CREATE TABLE Formulaires(
    Id_Formulaires INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    mail VARCHAR(50),
    telephone VARCHAR(13),
    message TEXT NOT NULL,
    Id_Motifs INT NOT NULL,
    FOREIGN KEY(Id_Motifs) REFERENCES Motifs(Id_Motifs)
);
CREATE TABLE Validations(
    Id_Validations INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    valider CHAR(3)
);
CREATE TABLE Energies(
    Id_Energies INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    energie VARCHAR(25) NOT NULL
);
CREATE TABLE Options(
    Id_Options INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    optionn VARCHAR(50)
);
CREATE TABLE Utilisateurs(
    Id_Utilisateurs INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    mail VARCHAR(50) NOT NULL,
    mdp CHAR(60) NOT NULL,
    Id_Roles INT NOT NULL,
    FOREIGN KEY(Id_Roles) REFERENCES Roles(Id_Roles)
);
CREATE TABLE Jours(
    Id_Jours INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    jour VARCHAR(8),
    heure_matin VARCHAR(10),
    heure_soir VARCHAR(10),
    Id_Utilisateurs INT NOT NULL,
    FOREIGN KEY(Id_Utilisateurs) REFERENCES Utilisateurs(Id_Utilisateurs)
);
CREATE TABLE Services(
    Id_Services INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(50),
    description TEXT,
    Id_Utilisateurs INT NOT NULL,
    FOREIGN KEY(Id_Utilisateurs) REFERENCES Utilisateurs(Id_Utilisateurs)
);
CREATE TABLE Avis(
    Id_Avis INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    commentaire VARCHAR(200),
    note INT,
    Id_Validations INT NOT NULL,
    FOREIGN KEY(Id_Validations) REFERENCES Validations(Id_Validations)
);
CREATE TABLE Voitures(
    Id_Voitures INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    kilometrage INT,
    annee INT,
    prix DECIMAL(5,0) NOT NULL,
    photo_principal VARCHAR(50) NOT NULL,
    Id_Marques INT NOT NULL,
    Id_Modeles INT NOT NULL,
    FOREIGN KEY (Id_Marques) REFERENCES Marques(Id_Marques),
    FOREIGN KEY (Id_Modeles) REFERENCES Modeles(Id_Modeles)
);
CREATE TABLE Photos(
    Id_Photos INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    photo_secondaire VARCHAR(50),
    Id_Voitures INT NOT NULL,
    FOREIGN KEY(Id_Voitures) REFERENCES Voitures(Id_Voitures)
);
CREATE TABLE Annonces(
    Id_Annonces INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(50) NOT NULL,
    date_publication DATE,
    Id_Voitures INT NOT NULL,
    UNIQUE(Id_Voitures),
    FOREIGN KEY(Id_Voitures) REFERENCES Voitures(Id_Voitures)
);
CREATE TABLE gerer(
    Id_Utilisateurs INT,
    Id_Formulaires INT,
    PRIMARY KEY(Id_Utilisateurs, Id_Formulaires),
    FOREIGN KEY(Id_Utilisateurs) REFERENCES Utilisateurs(Id_Utilisateurs),
    FOREIGN KEY(Id_Formulaires) REFERENCES Formulaires(Id_Formulaires)
);

CREATE TABLE poster(
    Id_Utilisateurs INT,
    Id_Avis INT,
    PRIMARY KEY(Id_Utilisateurs, Id_Avis),
    FOREIGN KEY(Id_Utilisateurs) REFERENCES Utilisateurs(Id_Utilisateurs),
    FOREIGN KEY(Id_Avis) REFERENCES Avis(Id_Avis)
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
CREATE TABLE avoir(
    Id_Modeles INT,
    Id_Options INT,
    PRIMARY KEY(Id_Modeles, Id_Options),
    FOREIGN KEY(Id_Modeles) REFERENCES Modeles(Id_Modeles),
    FOREIGN KEY(Id_Options) REFERENCES Options(Id_Options)
);
